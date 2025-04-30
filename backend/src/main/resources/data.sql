INSERT INTO users (username, password, role) VALUES
                                                 ('admin1', 'hashed_pass1', 'admin'),
                                                 ('teacher1', 'hashed_pass2', 'teacher'),
                                                 ('teacher2', 'hashed_pass3', 'teacher'),
                                                 ('teacher3', 'hashed_pass4', 'teacher'),
                                                 ('student1', 'hashed_pass5', 'student'),
                                                 ('student2', 'hashed_pass6', 'student'),
                                                 ('student3', 'hashed_pass7', 'student'),
                                                 ('student4', 'hashed_pass8', 'student'),
                                                 ('parent1', 'hashed_pass9', 'parent'),
                                                 ('parent2', 'hashed_pass10', 'parent');

-- PERSONAL_DATA
INSERT INTO personal_data (user_id, name, surname, pesel) VALUES
                                                              (1, 'Adam', 'Admin', '11111111111'),
                                                              (2, 'Tomasz', 'Nauczyciel', '22222222222'),
                                                              (3, 'Maria', 'Nowak', '33333333333'),
                                                              (4, 'Kamil', 'Lis', '44444444444'),
                                                              (5, 'Jan', 'Kowalski', '55555555555'),
                                                              (6, 'Ola', 'Zielinska', '66666666666'),
                                                              (7, 'Piotr', 'Wójcik', '77777777777'),
                                                              (8, 'Anna', 'Kaczmarek', '88888888888'),
                                                              (9, 'Barbara', 'Parent', '99999999999'),
                                                              (10, 'Zofia', 'Rodzic', '10101010101');

-- CONTACT_INFO
INSERT INTO contact_info (user_id, phone_number, email, address) VALUES
                                                                     (1, '111111111', 'admin1@example.com', 'Admin Street 1'),
                                                                     (2, '222222222', 'teacher1@example.com', 'Teacher Street 2'),
                                                                     (3, '333333333', 'teacher2@example.com', 'Teacher Street 3'),
                                                                     (4, '444444444', 'teacher3@example.com', 'Teacher Street 4'),
                                                                     (5, '555555555', 'student1@example.com', 'Student Street 5'),
                                                                     (6, '666666666', 'student2@example.com', 'Student Street 6'),
                                                                     (7, '777777777', 'student3@example.com', 'Student Street 7'),
                                                                     (8, '888888888', 'student4@example.com', 'Student Street 8'),
                                                                     (9, '999999999', 'parent1@example.com', 'Parent Street 9'),
                                                                     (10, '101010101', 'parent2@example.com', 'Parent Street 10');

-- PARENTS
INSERT INTO parents (user_id) VALUES
                                  (9),
                                  (10);

-- TEACHERS
INSERT INTO teachers (user_id) VALUES
                                   (2),
                                   (3),
                                   (4);

-- CLASSES
INSERT INTO classes (name, class_teacher) VALUES
                                              ('1A', 1),
                                              ('2B', 2),
                                              ('3C', 3);

-- STUDENTS
INSERT INTO students (user_id, class_id) VALUES
                                             (5, 1),
                                             (6, 1),
                                             (7, 2),
                                             (8, 3);

-- PARENT_STUDENT
INSERT INTO parent_student (parent_id, student_id) VALUES
                                                       (1, 1),
                                                       (1, 2),
                                                       (2, 3),
                                                       (2, 4);

-- SUBJECTS
INSERT INTO subjects (name) VALUES
                                ('Matematyka'),
                                ('Informatyka'),
                                ('Fizyka'),
                                ('Chemia'),
                                ('Biologia'),
                                ('Geografia'),
                                ('Historia'),
                                ('Angielski'),
                                ('Polski'),
                                ('WF');

-- TEACHER_SUBJECT
INSERT INTO teacher_subject (teacher_id, subject_id) VALUES
                                                         (1, 1),
                                                         (1, 2),
                                                         (2, 3),
                                                         (2, 4),
                                                         (3, 5),
                                                         (3, 6),
                                                         (1, 7),
                                                         (2, 8),
                                                         (3, 9),
                                                         (2, 10);

-- CLASS_SCHEDULE
INSERT INTO class_schedule (class_id, teacher_id, subject_id, day_of_week, lesson_number, room_number) VALUES
                                                                                                           (1, 1, 1, 1, 1, 101),
                                                                                                           (1, 1, 2, 1, 2, 102),
                                                                                                           (1, 2, 3, 2, 1, 103),
                                                                                                           (2, 2, 4, 2, 2, 104),
                                                                                                           (2, 3, 5, 3, 1, 105),
                                                                                                           (2, 3, 6, 3, 2, 106),
                                                                                                           (3, 1, 7, 4, 1, 107),
                                                                                                           (3, 2, 8, 4, 2, 108),
                                                                                                           (3, 3, 9, 5, 1, 109),
                                                                                                           (3, 2, 10, 5, 2, 110);

-- ATTENDANCE
INSERT INTO attendance (student_id, schedule_id, date, status) VALUES
                                                                   (1, 1, '2025-04-01', 'present'),
                                                                   (2, 2, '2025-04-01', 'late'),
                                                                   (3, 3, '2025-04-01', 'absent'),
                                                                   (4, 4, '2025-04-01', 'present'),
                                                                   (1, 5, '2025-04-02', 'late'),
                                                                   (2, 6, '2025-04-02', 'present'),
                                                                   (3, 7, '2025-04-02', 'absent'),
                                                                   (4, 8, '2025-04-02', 'present'),
                                                                   (1, 9, '2025-04-03', 'present'),
                                                                   (2, 10, '2025-04-03', 'late');

-- TESTS
INSERT INTO tests (title, subject_id, date, class_id) VALUES
                                                          ('Test Matematyka 1', 1, '2025-04-10', 1),
                                                          ('Test Informatyka 1', 2, '2025-04-11', 1),
                                                          ('Test Fizyka 1', 3, '2025-04-12', 2),
                                                          ('Test Chemia 1', 4, '2025-04-13', 2),
                                                          ('Test Biologia 1', 5, '2025-04-14', 2),
                                                          ('Test Geografia 1', 6, '2025-04-15', 2),
                                                          ('Test Historia 1', 7, '2025-04-16', 3),
                                                          ('Test Angielski 1', 8, '2025-04-17', 3),
                                                          ('Test Polski 1', 9, '2025-04-18', 3),
                                                          ('Test WF 1', 10, '2025-04-19', 3);

-- EVENTS
INSERT INTO events (title, description, date, class_id) VALUES
                                                            ('Dzień sportu', 'Zawody sportowe', '2025-04-20', 1),
                                                            ('Dzień otwarty', 'Spotkanie z rodzicami', '2025-04-21', 1),
                                                            ('Wystawa naukowa', 'Pokazy eksperymentów', '2025-04-22', 2),
                                                            ('Wycieczka', 'Wyjazd edukacyjny', '2025-04-23', 2),
                                                            ('Teatr', 'Spektakl teatralny', '2025-04-24', 3),
                                                            ('Konkurs matematyczny', 'Test matematyczny', '2025-04-25', 3),
                                                            ('Dzień Ziemi', 'Akcja sprzątania', '2025-04-26', 1),
                                                            ('Warsztaty IT', 'Szkolenie komputerowe', '2025-04-27', 2),
                                                            ('Konkurs literacki', 'Pisanie opowiadań', '2025-04-28', 3),
                                                            ('Kino szkolne', 'Seans filmowy', '2025-04-29', 1);

-- GRADES
INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, "date", description) VALUES
                                                                                              (1, 1, 1, 5.0, '2025-04-12','Test Matematyka 1'),
                                                                                              (2, 2, 1, 4.5, '2025-04-12','Test Informatyka 1'),
                                                                                              (3, 3, 2, 4.0, '2025-04-12','Test Fizyka 1'),
                                                                                              (4, 4, 2, 3.5, '2025-04-12','Test Chemia 1'),
                                                                                              (1, 5, 3, 5.5, '2025-04-12','Test Biologia 1'),
                                                                                              (2, 6, 3, 3.0, '2025-04-12','Test Geografia 1'),
                                                                                              (3, 7, 1, 4.5, '2025-04-12','Test Historia 1'),
                                                                                              (4, 8, 2, 4.0, '2025-04-12','Test Angielski 1'),
                                                                                              (1, 9, 3, 5.0, '2025-04-12','Test Polski 1'),
                                                                                              (2, 10, 2, 3.5,'2025-04-12','Test WF 1');
