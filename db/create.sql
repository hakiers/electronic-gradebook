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


CREATE TABLE classes(
    class_id serial PRIMARY KEY,
    name varchar(4) not null UNIQUE,
    class_teacher integer REFERENCES teachers(teacher_id) ON DELETE SET NULL ON UPDATE CASCADE
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
    status varchar(16) CHECK(status IN ('present', 'absent', 'late')) not null,
    CONSTRAINT c2 UNIQUE(student_id, schedule_id, "date")
);

CREATE TABLE tests(
    test_id serial PRIMARY KEY,
    title varchar(100) not null,
    subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
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

CREATE TABLE teacher_subject(
    teacher_id integer REFERENCES teachers(teacher_id) ON DELETE CASCADE ON UPDATE CASCADE,
    subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT pk1 PRIMARY KEY(teacher_id, subject_id)
);

CREATE TABLE parent_student(
    parent_id integer REFERENCES parents(parent_id) ON DELETE CASCADE ON UPDATE CASCADE,
    student_id integer REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT pk2 PRIMARY KEY(parent_id, student_id)
);

CREATE TABLE grades(
    grade_id serial PRIMARY KEY,
    student_id integer REFERENCES students(student_id) ON DELETE CASCADE ON UPDATE CASCADE,
    subject_id integer REFERENCES subjects(subject_id) ON DELETE CASCADE ON UPDATE CASCADE,
    teacher_id integer REFERENCES teachers(teacher_id) ON DELETE SET NULL ON UPDATE CASCADE,
    grade_value numeric(3,2) not null CHECK (grade_value BETWEEN 1 AND 6),
    description varchar(32) not null
);
