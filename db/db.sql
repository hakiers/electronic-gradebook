--wersja wstepna - do poprawek


CREATE TABLE users(
    user_id integer PRIMARY KEY,
    username varchar(32) not null,
    password char(32) not null,
    role varchar(16) not null CHECK(role IN ('admin', 'teacher', 'student', 'parent'))
);

CREATE TABLE classes(
    class_id integer PRIMARY KEY,
    name varchar(4) not null,
    class_teacher integer not null
);


CREATE TABLE students(
    student_id integer PRIMARY KEY,
    user_id integer REFERENCES users(user_id),
    name varchar(32) not null,
    surname varchar(32) not null,
    class_id integer REFERENCES classes(class_id)
);

CREATE TABLE parents(
    parent_id integer PRIMARY KEY,
    user_id integer REFERENCES users(user_id),
    name varchar(32) not null,
    surname varchar(32) not null,
    student_id integer REFERENCES students(student_id)
);

CREATE TABLE teachers(
    teacher_id integer PRIMARY KEY,
    user_id integer REFERENCES users(user_id),
    name varchar(32) not null,
    surname varchar(32) not null
);

CREATE TABLE subjects(
    subject_id integer PRIMARY KEY,
    name varchar(32) not null
);

CREATE TABLE class_schedule(
    schedule_id integer PRIMARY KEY,
    class_id integer REFERENCES classes(class_id),
    teacher_id integer REFERENCES teachers(teacher_id),
    subject_id integer REFERENCES subjects(subject_id),
    day_of_week integer not null CHECK(day_of_week BETWEEN 1 AND 7),
    lesson_number integer not null,
    room_number integer not null       
);

CREATE TABLE contact_info(
    contact_id integer PRIMARY KEY,
    user_id integer REFERENCES users(user_id),
    phone_number char(9) not null CHECK (phone_number ~ '^(\+?[0-9]{9,15})$'),
    email varchar(64) CHECK (email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    adress varchar(100)
);

CREATE TABLE attendance(
    attendance_id integer PRIMARY KEY,
    student_id integer REFERENCES students(student_id),
    schedule_id integer REFERENCES class_schedule(schedule_id),
    status varchar(16) CHECK(status IN ('present', 'absent', 'late'))  
);

CREATE TABLE tests(
    test_id integer PRIMARY KEY,
    title varchar(100) not null,
    subject_id integer REFERENCES subjects(subject_id),
    "date" date not null,
    class_id integer REFERENCES classes(class_id)
);

CREATE TABLE events(
    event_id integer PRIMARY KEY,
    title varchar(32) not null,
    decsription varchar(100),      
    "date" date not null,
    class_id integer REFERENCES classes(class_id)
);

CREATE TABLE teacher_subject(
    teacher_id integer REFERENCES teachers(teacher_id),
    subject_id integer REFERENCES subjects(subject_id)
);

CREATE TABLE grades(
    greade_id integer PRIMARY KEY,
    student_id integer REFERENCES students(student_id),
    subject_id integer REFERENCES subjects(subject_id),
    teacher_id integer REFERENCES teachers(teacher_id),
    grade_value numeric(3,2) not null CHECK (grade_value BETWEEN 1 AND 6),
    description varchar(32) not null
);
