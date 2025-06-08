CREATE DATABASE egradebook;

\c egradebook

CREATE TABLE class_profile(
    id serial PRIMARY KEY,
    short_name varchar(16) not null UNIQUE,
    name varchar(32) not null
);

CREATE TABLE users(
    user_id serial PRIMARY KEY,
    username varchar(32) not null UNIQUE,
    password varchar(60) not null,
    role varchar(16) not null CHECK(role IN ('admin', 'teacher', 'student', 'parent'))
);

CREATE TABLE teachers(
    teacher_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE classes(
    class_id serial PRIMARY KEY,
    class_profile integer REFERENCES class_profile(id) ON DELETE CASCADE,
    class_teacher integer REFERENCES teachers(teacher_id) ON DELETE SET NULL ON UPDATE CASCADE,
    class_year char(4)
);

CREATE TABLE subjects(
    subject_id serial PRIMARY KEY,
    name varchar(32) not null UNIQUE
);

CREATE TABLE subject_groups(
   group_id serial PRIMARY KEY,
   class_id integer REFERENCES classes(class_id) ON DELETE CASCADE ON UPDATE CASCADE,
   subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
   group_number integer
);

CREATE TABLE parents(
    parent_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE students(
    student_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE,
    class_id integer REFERENCES classes(class_id) ON DELETE SET NULL ON UPDATE CASCADE
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
    CONSTRAINT c1 UNIQUE(class_id, day_of_week, lesson_number, group_id)
);

CREATE TABLE contact_info(
    contact_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE  UNIQUE,
    phone_number char(9) not null,
    email varchar(64),
    address varchar(100)
);

CREATE TABLE personal_data(
    personal_id serial PRIMARY KEY,
    user_id integer REFERENCES users(user_id) ON DELETE CASCADE ON UPDATE CASCADE UNIQUE,
    name varchar(32) not null,
    surname varchar(32) not null,
    pesel char(11) not null
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
    title varchar(64) not null,
    description varchar(100),
    "date" date not null,
    class_id integer REFERENCES classes(class_id) ON DELETE CASCADE ON UPDATE CASCADE
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
    PRIMARY KEY (teacher_id, class_id, subject_id, group_id)
);

CREATE TABLE class_changes_history(
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    from_class INTEGER REFERENCES classes(class_id),
    to_class INTEGER NOT NULL REFERENCES classes(class_id),
    "date" date NOT NULL
);

CREATE TABLE group_changes_history(
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    from_group INTEGER REFERENCES subject_groups(group_id),
    to_group INTEGER NOT NULL REFERENCES subject_groups(group_id),
    "date" date NOT NULL
);

CREATE TABLE final_grades(
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES students(student_id) ON DELETE CASCADE,
    subject_id INTEGER NOT NULL REFERENCES subjects(subject_id),
    teacher_id INTEGER NOT NULL REFERENCES teachers(teacher_id),
    grade_value NUMERIC,
    school_year character(4) NOT NULL
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

--better sprawdzarka jako ciekawostka
/*
CREATE OR REPLACE FUNCTION validate_pesel()
RETURNS TRIGGER AS $$
DECLARE
pesel_text TEXT := NEW.pesel;
    pesel_digits INTEGER[];
    weights INTEGER[] := ARRAY[1, 3, 7, 9, 1, 3, 7, 9, 1, 3];
    control_sum INTEGER := 0;
    control_digit INTEGER;
    i INTEGER;
    yy INTEGER;
    mm INTEGER;
    dd INTEGER;
year INTEGER;
month INTEGER;
day INTEGER;
BEGIN
    --Sprawdzenie długości i cyfr
    IF pesel_text !~ '^[0-9]{11}$' THEN
        RAISE EXCEPTION 'Nieprawidłowy numer PESEL: % (nie 11 cyfr)', pesel_text;
END IF;

    --Konwersja na tablicę cyfr
    pesel_digits := ARRAY[
        CAST(SUBSTRING(pesel_text,1,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,2,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,3,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,4,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,5,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,6,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,7,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,8,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,9,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,10,1) AS INTEGER),
        CAST(SUBSTRING(pesel_text,11,1) AS INTEGER)
    ];

    --Cyfra kontrolna
FOR i IN 1..10 LOOP
        control_sum := control_sum + pesel_digits[i] * weights[i];
END LOOP;
    control_digit := (10 - (control_sum % 10)) % 10;

    IF control_digit != pesel_digits[11] THEN
        RAISE EXCEPTION 'Nieprawidłowa cyfra kontrolna PESEL: %', pesel_text;
END IF;

    --Sprawdzanie daty urodzenia
    yy := pesel_digits[1]*10 + pesel_digits[2];
    mm := pesel_digits[3]*10 + pesel_digits[4];
    dd := pesel_digits[5]*10 + pesel_digits[6];

    --Odszyfrowanie wieku na podstawie miesięcy
    IF mm BETWEEN 1 AND 12 THEN
        year := 1900 + yy;
month := mm;
    ELSIF mm BETWEEN 21 AND 32 THEN
        year := 2000 + yy;
month := mm - 20;
    ELSIF mm BETWEEN 41 AND 52 THEN
        year := 2100 + yy;
month := mm - 40;
    ELSIF mm BETWEEN 61 AND 72 THEN
        year := 2200 + yy;
month := mm - 60;
    ELSIF mm BETWEEN 81 AND 92 THEN
        year := 1800 + yy;
month := mm - 80;
ELSE
        RAISE EXCEPTION 'Nieprawidłowy miesiąc w PESEL: %', pesel_text;
END IF;
day := dd;

    -- Sprawdzanie poprawności daty
    PERFORM to_date(year::TEXT || lpad(month::TEXT,2,'0') || lpad(day::TEXT,2,'0'), 'YYYYMMDD');
    IF NOT FOUND THEN
        RAISE EXCEPTION 'Nieprawidłowa data urodzenia w PESEL: %', pesel_text;
END IF;

RETURN NEW;
END;
$$ LANGUAGE plpgsql;
*/



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
CREATE OR REPLACE FUNCTION get_class_number_by_year(year CHAR(4))
RETURNS INTEGER AS $$
DECLARE r INTEGER;
BEGIN
    IF EXTRACT(MONTH FROM CURRENT_DATE) > 8 THEN
       r := EXTRACT(YEAR FROM CURRENT_DATE) - year::INTEGER + 1;
    ELSE
       r := EXTRACT(YEAR FROM CURRENT_DATE) - year::INTEGER;
    END IF;
    RETURN r;
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

--automatyczne wstawianie daty przy obecnosci
CREATE OR REPLACE FUNCTION set_attendance_date()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW."date" IS NULL THEN
       NEW."date" := CURRENT_DATE;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_set_attendance_date
BEFORE INSERT ON attendance
FOR EACH ROW EXECUTE FUNCTION set_attendance_date();

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
      AND subject_id = NEW.subject_id LIMIT 1;

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
    cs.room_number,
    se.type AS exception_type,
    se.sub_teacher_id,
    se.note,
    se.exception_date
FROM class_schedule cs
         JOIN classes c ON c.class_id = cs.class_id
         JOIN subjects s ON s.subject_id = cs.subject_id
         JOIN teachers t ON t.teacher_id = cs.teacher_id
         LEFT JOIN slot_exceptions se
         ON se.schedule_id = cs.schedule_id
         AND se.exception_date BETWEEN CURRENT_DATE AND CURRENT_DATE + interval '6 days';


-- plan lekcji dla ucznia 
CREATE OR REPLACE VIEW student_timetable AS
SELECT
    st.student_id,
    cs.day_of_week,
    cs.lesson_number,
    s.name AS subject,
    cs.room_number,
    se.type AS exception_type,
    se.sub_teacher_id,
    se.note,
    se.exception_date
FROM students st
         JOIN class_schedule cs ON cs.class_id = st.class_id
         JOIN subjects s ON s.subject_id = cs.subject_id
         LEFT JOIN slot_exceptions se
        ON se.schedule_id = cs.schedule_id
        AND se.exception_date BETWEEN CURRENT_DATE AND CURRENT_DATE + interval '6 days';



-- ranking uczniow wedlug redniej
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

--tutaj dopisac sprawdzanie roku szkolnego???
-- srednia z przedmiotu dla ucznia 
CREATE OR REPLACE VIEW subject_avg_for_student AS
SELECT 
    g.student_id,
    s.name AS subject,
    ROUND(AVG(g.grade_value), 2) AS avg_grade
FROM grades g
JOIN subjects s ON s.subject_id = g.subject_id
GROUP BY g.student_id, s.name;

--procent nieobecnosci w danym roku szkolnym
CREATE OR REPLACE FUNCTION count_absences(id integer) RETURNS numeric AS
$$
DECLARE absences numeric;
DECLARE all_attendance numeric;
DECLARE result numeric(5,2);
BEGIN

SELECT COUNT(*) INTO absences FROM attendance
WHERE student_id = id AND status = 'absence';

SELECT COUNT(*) INTO all_attendance FROM attendance
WHERE student_id = id;

result := ROUND(absences/all_attendance*100, 2);

RETURN result;
END;
$$
LANGUAGE plpgsql;

--trigger blokuje mozliwosc zmiany danych osobowych na null
CREATE OR REPLACE FUNCTION avoid_nulls_in_personal_data()
RETURNS TRIGGER AS $$
BEGIN
IF NEW.name IS NULL AND NEW.surname IS NULL
    THEN RETURN OLD;
END IF;

IF NEW.name IS NULL
    THEN NEW.name := OLD.name;
END IF;

IF NEW.surname IS NULL
   THEN NEW.surname := OLD.surname;
END IF;

RETURN NEW;

END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER trg_avoid_nulls_in_personal_data
BEFORE UPDATE ON personal_data
FOR EACH ROW EXECUTE FUNCTION avoid_nulls_in_personal_data();

-- Historia zmian grup
DROP FUNCTION IF EXISTS insert_group_change_history() CASCADE;

CREATE OR REPLACE FUNCTION insert_group_change_history()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (
        SELECT ssg.group_id FROM student_subject_group ssg
        JOIN subject_groups sg ON sg.group_id = ssg.group_id
        WHERE ssg.student_id = NEW.student_id
        AND sg.subject_id = (SELECT subject_id FROM subject_groups WHERE group_id = NEW.group_id)
        AND ssg.group_id != NEW.group_id
        LIMIT 1
    ) THEN
        INSERT INTO group_changes_history (student_id, old_group_id, new_group_id, change_date, change_reason)
        VALUES (NEW.student_id,
                (SELECT ssg.group_id FROM student_subject_group ssg
                 JOIN subject_groups sg ON sg.group_id = ssg.group_id
                 WHERE ssg.student_id = NEW.student_id
                 AND sg.subject_id = (SELECT subject_id FROM subject_groups WHERE group_id = NEW.group_id)
                 AND ssg.group_id != NEW.group_id
                 LIMIT 1),
                NEW.group_id,
                NOW(),
                'Automatic change');
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_insert_group_change_history ON student_subject_group;
CREATE TRIGGER trg_insert_group_change_history
    AFTER INSERT ON student_subject_group
    FOR EACH ROW EXECUTE FUNCTION insert_group_change_history();

-- Historia zmian klas
CREATE OR REPLACE FUNCTION insert_class_change_history()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.class_id IS DISTINCT FROM OLD.class_id AND NEW.class_id IS NOT NULL THEN
        INSERT INTO class_changes_history(student_id, from_class, to_class, "date")
        VALUES (NEW.student_id, OLD.class_id, NEW.class_id, CURRENT_DATE);
END IF;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trg_insert_class_change_history ON students;
CREATE TRIGGER trg_insert_class_change_history
    AFTER UPDATE ON students
    FOR EACH ROW EXECUTE FUNCTION insert_class_change_history();



