CREATE DATABASE egradebook;

\c egradebook

CREATE TABLE users(
    user_id serial PRIMARY KEY,
    username varchar(32) not null UNIQUE,
    password varchar(60) not null,
    role varchar(16) not null CHECK(role IN ('admin', 'teacher', 'student', 'parent'))
);


CREATE TABLE parents(
    parent_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE teachers(
    teacher_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE class_profile(
    id serial PRIMARY KEY,
    short_name varchar(16) not null UNIQUE,
    name varchar(32) not null
);


CREATE TABLE classes(
    class_id serial PRIMARY KEY,
    class_profile integer REFERENCES class_profile(id) ON DELETE SET NULL,
    class_teacher integer REFERENCES teachers(teacher_id) ON DELETE SET NULL ON UPDATE CASCADE,
    class_year char(4)
);

CREATE TABLE students(
    student_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    class_id integer REFERENCES classes(class_id) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE subjects(
    subject_id serial PRIMARY KEY,
    name varchar(32) not null UNIQUE
);

CREATE TABLE class_schedule(
    schedule_id serial PRIMARY KEY,
    class_id integer REFERENCES classes(class_id) ON DELETE CASCADE ON UPDATE CASCADE,
    teacher_id integer REFERENCES teachers(teacher_id) ON DELETE SET NULL ON UPDATE CASCADE,
    subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
    group_id integer REFERENCES subject_groups(group_id) ON DELETE CASCADE ON UPDATE CASCADE,
    day_of_week integer not null CHECK(day_of_week BETWEEN 1 AND 7),
    lesson_number integer not null,
    room_number integer not null,
    CONSTRAINT c1 UNIQUE(class_id, day_of_week, lesson_number)
);

CREATE TABLE contact_info(
    contact_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE  UNIQUE,
    phone_number char(9) not null CHECK (phone_number ~ '^[0-9]{9}$') UNIQUE,
    email varchar(64) CHECK (email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$') UNIQUE,
    address varchar(100)
);

CREATE TABLE personal_data(
    personal_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE UNIQUE,
    name varchar(32) not null,
    surname varchar(32) not null,
    pesel char(11) not null UNIQUE
);

CREATE TABLE attendance(
    attendance_id serial PRIMARY KEY,
    student_id integer REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    schedule_id integer REFERENCES class_schedule(schedule_id) ON DELETE SET NULL ON UPDATE CASCADE,
    "date" date not null,
    status varchar(16) CHECK(status IN ('presence', 'absence', 'late', 'excused absence')) not null,
    CONSTRAINT c2 UNIQUE(student_id, schedule_id, "date")
);

CREATE TABLE tests(
    test_id serial PRIMARY KEY,
    title varchar(100) not null,
    subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
    group_id integer REFERENCES subject_groups(group_id) ON DELETE CASCADE ON UPDATE CASCADE,
    "date" date not null,
    class_id integer REFERENCES classes(class_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE events(
    event_id serial PRIMARY KEY,
    title varchar(32) not null,
    description varchar(100),
    "date" date not null,
    class_id integer REFERENCES classes(class_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE subject_groups(
    group_id serial PRIMARY KEY,
    class_id integer REFERENCES classes(class_id) ON DELETE CASCADE ON UPDATE CASCADE,
    subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
    group_number integer  
);

CREATE TABLE student_subject_group(
    student_id integer REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    group_id integer REFERENCES subject_groups(group_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT pk3 PRIMARY KEY(student_id, group_id)
);

CREATE TABLE teacher_subject(
    teacher_id integer REFERENCES teachers(teacher_id) ON DELETE CASCADE ON UPDATE CASCADE,
    subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT pk1 PRIMARY KEY(teacher_id, subject_id)
);

CREATE TABLE parent_student(
    parent_id integer REFERENCES parents(parent_id) ON DELETE CASCADE ON UPDATE CASCADE,
    student_id integer REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    show_info boolean default true,
    CONSTRAINT pk2 PRIMARY KEY(parent_id, student_id)
);

CREATE TABLE grades(
    grade_id serial PRIMARY KEY,
    student_id integer REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
    teacher_id integer REFERENCES teachers(teacher_id) ON DELETE SET NULL ON UPDATE CASCADE,
    grade_value numeric(3,2) not null CHECK (grade_value BETWEEN 1 AND 6),
    "date" date not null,
    description varchar(32) not null
);

-- odwołania i zastępstwa lekcji
CREATE TABLE slot_exceptions (
    exception_id SERIAL PRIMARY KEY,
    schedule_id INTEGER NOT NULL REFERENCES class_schedule(schedule_id) ON DELETE CASCADE,
    exception_date DATE NOT NULL,
    type VARCHAR(16) NOT NULL CHECK(type IN ('cancelled','substitution')),
    sub_teacher_id INTEGER REFERENCES teachers(teacher_id),
    note VARCHAR(200)
);

-- połączenie nauczycieli z klasami, których uczą
CREATE TABLE teacher_class_subject (
    teacher_id INTEGER NOT NULL REFERENCES teachers(teacher_id) ON DELETE CASCADE,
    class_id INTEGER NOT NULL REFERENCES classes(class_id) ON DELETE CASCADE,
    subject_id INTEGER NOT NULL REFERENCES subjects(subject_id) ON DELETE CASCADE,
    group_id INTEGER NOT NULL REFERENCES subject_groups(group_id) ON DELETE CASCADE,
    PRIMARY KEY (teacher_id, class_id, subject_id)
);

-- sprawdzanie pseselu 
CREATE OR REPLACE FUNCTION validate_pesel()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.pesel !~ '^[0-9]{11}$' THEN
        RAISE EXCEPTION 'Nieprawidłowy numer PESEL: %', NEW.pesel;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validate_pesel
BEFORE INSERT OR UPDATE ON personal_data
FOR EACH ROW EXECUTE FUNCTION validate_pesel();

-- liczenie sredniej z przedmiotu 
CREATE OR REPLACE FUNCTION subject_average(student INT, subject INT)
RETURNS NUMERIC AS $$
DECLARE
    avg_grade NUMERIC;
BEGIN
    SELECT AVG(grade_value) INTO avg_grade
    FROM grades
    WHERE student_id = student AND subject_id = subject;

    RETURN avg_grade;
END;
$$ LANGUAGE plpgsql;

-- wyciaganie klasy z rocznika
CREATE OR REPLACE FUNCTION get_class_by_year(year CHAR(4))
RETURNS TABLE(class_id INT, class_name TEXT) AS $$
BEGIN
    RETURN QUERY
    SELECT c.class_id, cp.name
    FROM classes c
    JOIN class_profile cp ON cp.id = c.class_profile
    WHERE c.class_year = year;
END;
$$ LANGUAGE plpgsql;

-- automatyczne wstawianie daty przy ocenie 
CREATE OR REPLACE FUNCTION set_grade_date()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW."date" IS NULL THEN
        NEW."date" := CURRENT_DATE;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_set_grade_date
BEFORE INSERT ON grades
FOR EACH ROW EXECUTE FUNCTION set_grade_date();


-- liczba nieusprawiedliownych godzin
CREATE OR REPLACE FUNCTION unexcused_hours(student INT)
RETURNS INT AS $$
DECLARE
    count_absent INT;
BEGIN
    SELECT COUNT(*) INTO count_absent
    FROM attendance
    WHERE student_id = student AND status = 'absent';

    RETURN count_absent;
END;
$$ LANGUAGE plpgsql;

-- sprawdzenie czy nauczyciel moze wstawic ocene 
CREATE OR REPLACE FUNCTION check_teacher_permission()
RETURNS TRIGGER AS $$
DECLARE
    is_teaching BOOLEAN;
BEGIN
    SELECT TRUE INTO is_teaching
    FROM teacher_class_subject
    WHERE teacher_id = NEW.teacher_id
      AND class_id = (SELECT class_id FROM students WHERE student_id = NEW.student_id)
      AND subject_id = NEW.subject_id
    LIMIT 1;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Nauczyciel nie uczy tego przedmiotu w tej klasie';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_teacher_permission
BEFORE INSERT ON grades
FOR EACH ROW EXECUTE FUNCTION check_teacher_permission();

-- wypisz oceny ucznia z przedmiotu 
CREATE OR REPLACE FUNCTION get_student_grades(student INT)
RETURNS TABLE(subject_name TEXT, grade NUMERIC, description TEXT, "date" DATE) AS $$
BEGIN
    RETURN QUERY
    SELECT s.name, g.grade_value, g.description, g.date
    FROM grades g
    JOIN subjects s ON s.subject_id = g.subject_id
    WHERE g.student_id = student;
END;
$$ LANGUAGE plpgsql;


-- blokada wstawiania ocen w wakacje 
CREATE OR REPLACE FUNCTION block_grades_in_vacation()
RETURNS TRIGGER AS $$
BEGIN
    IF EXTRACT(MONTH FROM NEW."date") IN (7, 8) THEN
        RAISE EXCEPTION 'Nie można wystawiać ocen w wakacje (lipiec-sierpień)';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_block_grades_in_vacation
BEFORE INSERT ON grades
FOR EACH ROW EXECUTE FUNCTION block_grades_in_vacation();

-- sprawdzenie czy sala jest wolna 
CREATE OR REPLACE FUNCTION is_room_available()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM class_schedule
        WHERE room_number = NEW.room_number
        AND day_of_week = NEW.day_of_week
        AND lesson_number = NEW.lesson_number
    ) THEN
        RAISE EXCEPTION 'Sala % jest już zajęta o tej porze', NEW.room_number;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_is_room_available
BEFORE INSERT ON class_schedule
FOR EACH ROW EXECUTE FUNCTION is_room_available();

-- sprawdzenie czy nauczyciel nie ma dwoch lekcji na raz
CREATE OR REPLACE FUNCTION check_teacher_conflict()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM class_schedule
        WHERE teacher_id = NEW.teacher_id
        AND day_of_week = NEW.day_of_week
        AND lesson_number = NEW.lesson_number
    ) THEN
        RAISE EXCEPTION 'Nauczyciel ma już lekcję o tej godzinie';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_check_teacher_conflict
BEFORE INSERT ON class_schedule
FOR EACH ROW EXECUTE FUNCTION check_teacher_conflict();

-- plan lekcji dla klasy
CREATE OR REPLACE VIEW class_timetable AS
SELECT 
    c.class_id,
    cs.day_of_week,
    cs.lesson_number,
    s.name AS subject,
    t.teacher_id,
    cs.room_number
FROM class_schedule cs
JOIN classes c ON c.class_id = cs.class_id
JOIN subjects s ON s.subject_id = cs.subject_id
JOIN teachers t ON t.teacher_id = cs.teacher_id;

-- plan lekcji dla ucznia 
CREATE OR REPLACE VIEW student_timetable AS
SELECT 
    st.student_id,
    cs.day_of_week,
    cs.lesson_number,
    s.name AS subject,
    cs.room_number
FROM students st
JOIN class_schedule cs ON cs.class_id = st.class_id
JOIN subjects s ON s.subject_id = cs.subject_id;


-- raning uczniow wedlug redniej 
CREATE OR REPLACE VIEW student_avg_ranking AS
SELECT 
    s.class_id,
    s.student_id,
    pd.name,
    pd.surname,
    ROUND(AVG(g.grade_value), 2) AS avg_grade
FROM grades g
JOIN students s ON s.student_id = g.student_id
JOIN personal_data pd ON pd.user_id = s.user_id
GROUP BY s.class_id, s.student_id, pd.name, pd.surname
ORDER BY s.class_id, avg_grade DESC;

-- srednia z przedmiotu dla ucznia 
CREATE OR REPLACE VIEW subject_avg_for_student AS
SELECT 
    g.student_id,
    s.name AS subject,
    ROUND(AVG(g.grade_value), 2) AS avg_grade
FROM grades g
JOIN subjects s ON s.subject_id = g.subject_id
GROUP BY g.student_id, s.name;