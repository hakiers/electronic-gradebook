package com.egradebook.backend;/*
package com.egradebook.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.time.LocalDate;

@Component
public class DataInitializer implements CommandLineRunner {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void run(String... args) throws Exception {
        System.out.println("🔄 Initializing eGradebook database...");

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        // --- USERS ---
        addUser("admin", encoder.encode("admin123"), "admin");
        addUser("teacher1", encoder.encode("teacher123"), "teacher");
        addUser("teacher2", encoder.encode("teacher123"), "teacher");
        addUser("student1", encoder.encode("student123"), "student");
        addUser("student2", encoder.encode("student123"), "student");
        addUser("parent1", encoder.encode("parent123"), "parent");

        Integer adminUserId = getUserId("admin");
        Integer teacher1UserId = getUserId("teacher1");
        Integer teacher2UserId = getUserId("teacher2");
        Integer student1UserId = getUserId("student1");
        Integer student2UserId = getUserId("student2");
        Integer parent1UserId = getUserId("parent1");

        // --- PERSONAL DATA & CONTACT INFO ---
        addPersonalData(adminUserId, "Admin", "Adminowski", "00000000000");
        addPersonalData(teacher1UserId, "Jan", "Matematyczny", "11111111111");
        addPersonalData(teacher2UserId, "Anna", "Informatyczna", "22222222222");
        addPersonalData(student1UserId, "Adam", "Uczniowski", "33333333333");
        addPersonalData(student2UserId, "Ewa", "Uczniowska", "44444444444");
        addPersonalData(parent1UserId, "Tomasz", "Rodzicowski", "55555555555");

        addContactInfo(adminUserId, "123456789", "admin@school.edu", "School St. 1");
        addContactInfo(teacher1UserId, "111222333", "teacher1@school.edu", "Math St. 2");
        addContactInfo(teacher2UserId, "444555666", "teacher2@school.edu", "CS St. 3");
        addContactInfo(student1UserId, "777888999", "student1@school.edu", "Student St. 4");
        addContactInfo(student2UserId, "000111222", "student2@school.edu", "Student St. 5");
        addContactInfo(parent1UserId, "333444555", "parent1@school.edu", "Parent St. 6");

        // --- TEACHERS ---
        addTeacher(teacher1UserId);
        addTeacher(teacher2UserId);

        Integer teacher1Id = getTeacherId(teacher1UserId);
        Integer teacher2Id = getTeacherId(teacher2UserId);

        // --- PARENTS ---
        addParent(parent1UserId);
        Integer parent1Id = getParentId(parent1UserId);

        // --- CLASS PROFILES ---
        addClassProfile("1A", "First Grade - Class A");
        addClassProfile("2B", "Second Grade - Class B");

        Integer classProfile1AId = getClassProfileId("1A");
        Integer classProfile2BId = getClassProfileId("2B");

        // --- CLASSES ---
        addClass(classProfile1AId, teacher1Id, "2023");
        addClass(classProfile2BId, teacher2Id, "2023");

        Integer class1AId = getClassId(classProfile1AId, "2023");
        Integer class2BId = getClassId(classProfile2BId, "2023");

        // --- SUBJECTS ---
        addSubject("Mathematics");
        addSubject("Computer Science");
        addSubject("Physics");

        Integer mathId = getSubjectId("Mathematics");
        Integer csId = getSubjectId("Computer Science");
        Integer physicsId = getSubjectId("Physics");

        // --- TEACHER_SUBJECT ---
        addTeacherSubject(teacher1Id, mathId);
        addTeacherSubject(teacher1Id, physicsId);
        addTeacherSubject(teacher2Id, csId);

        // --- STUDENTS ---
        addStudent(student1UserId, class1AId);
        addStudent(student2UserId, class1AId);

        Integer student1Id = getStudentId(student1UserId);
        Integer student2Id = getStudentId(student2UserId);

        // --- PARENT_STUDENT ---
        addParentStudent(parent1Id, student1Id);
        addParentStudent(parent1Id, student2Id);

        // --- SUBJECT GROUPS ---
        addSubjectGroup(class1AId, mathId, 1); // Math group 1
        addSubjectGroup(class1AId, csId, 1);  // CS group 1

        Integer mathGroupId = getSubjectGroupId(class1AId, mathId, 1);
        Integer csGroupId = getSubjectGroupId(class1AId, csId, 1);

        // --- STUDENT_SUBJECT_GROUP ---
        addStudentSubjectGroup(student1Id, mathGroupId);
        addStudentSubjectGroup(student1Id, csGroupId);
        addStudentSubjectGroup(student2Id, mathGroupId);
        addStudentSubjectGroup(student2Id, csGroupId);

        // --- CLASS SCHEDULE ---
        addClassSchedule(class1AId, teacher1Id, mathId, mathGroupId, 1, 1, 101); // Monday, 1st lesson
        addClassSchedule(class1AId, teacher1Id, mathId, mathGroupId, 3, 2, 101); // Wednesday, 2nd lesson
        addClassSchedule(class1AId, teacher2Id, csId, csGroupId, 2, 3, 102);    // Tuesday, 3rd lesson

        Integer mathMondayScheduleId = getScheduleId(class1AId, 1, 1);
        Integer mathWednesdayScheduleId = getScheduleId(class1AId, 3, 2);
        Integer csTuesdayScheduleId = getScheduleId(class1AId, 2, 3);

        // --- GRADES ---
        addGrade(student1Id, mathId, teacher1Id, 4.5, "Quiz 1", LocalDate.now().minusDays(10));
        addGrade(student1Id, mathId, teacher1Id, 5.0, "Homework", LocalDate.now().minusDays(5));
        addGrade(student2Id, mathId, teacher1Id, 3.5, "Quiz 1", LocalDate.now().minusDays(10));
        addGrade(student1Id, csId, teacher2Id, 4.0, "Project", LocalDate.now().minusDays(7));
        addGrade(student2Id, csId, teacher2Id, 4.5, "Project", LocalDate.now().minusDays(7));

        // --- ATTENDANCE ---
        addAttendance(student1Id, mathMondayScheduleId, "presence", LocalDate.now().minusDays(7));
        addAttendance(student1Id, mathWednesdayScheduleId, "late", LocalDate.now().minusDays(5));
        addAttendance(student2Id, mathMondayScheduleId, "absence", LocalDate.now().minusDays(7));
        addAttendance(student2Id, csTuesdayScheduleId, "presence", LocalDate.now().minusDays(6));

        // --- TESTS ---
        addTest("Midterm Exam", mathId, mathGroupId, LocalDate.now().plusDays(14), class1AId);
        addTest("Final Project", csId, csGroupId, LocalDate.now().plusDays(21), class1AId);

        // --- EVENTS ---
        addEvent("Parent Meeting", "Quarterly parent-teacher meeting", LocalDate.now().plusDays(7), class1AId);
        addEvent("School Trip", "Science museum visit", LocalDate.now().plusDays(14), class1AId);

        // --- SLOT EXCEPTIONS ---
        addSlotException(mathMondayScheduleId, LocalDate.now().plusDays(1), "cancelled", null, "Teacher training");
        addSlotException(csTuesdayScheduleId, LocalDate.now().plusDays(2), "substitution", teacher1Id, "Substitute teacher");

        System.out.println("✅ eGradebook database initialized!");
    }

    // --- INSERT METHODS ---

    private void addUser(String username, String password, String role) {
        if (!exists("SELECT COUNT(*) FROM users WHERE username = ?", username)) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)",
                    username, password, role);
        }
    }

    private void addPersonalData(Integer userId, String name, String surname, String pesel) {
        if (!exists("SELECT COUNT(*) FROM personal_data WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)",
                    userId, name, surname, pesel);
        }
    }

    private void addContactInfo(Integer userId, String phone, String email, String address) {
        if (!exists("SELECT COUNT(*) FROM contact_info WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO contact_info (user_id, phone_number, email, address) VALUES (?, ?, ?, ?)",
                    userId, phone, email, address);
        }
    }

    private void addTeacher(Integer userId) {
        if (!exists("SELECT COUNT(*) FROM teachers WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO teachers (user_id) VALUES (?)", userId);
        }
    }

    private void addParent(Integer userId) {
        if (!exists("SELECT COUNT(*) FROM parents WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO parents (user_id) VALUES (?)", userId);
        }
    }

    private void addClassProfile(String shortName, String name) {
        if (!exists("SELECT COUNT(*) FROM class_profile WHERE short_name = ?", shortName)) {
            jdbcTemplate.update("INSERT INTO class_profile (short_name, name) VALUES (?, ?)", shortName, name);
        }
    }

    private void addClass(Integer classProfileId, Integer classTeacherId, String classYear) {
        if (!exists("SELECT COUNT(*) FROM classes WHERE class_profile = ? AND class_year = ?", classProfileId, classYear)) {
            jdbcTemplate.update("INSERT INTO classes (class_profile, class_teacher, class_year) VALUES (?, ?, ?)",
                    classProfileId, classTeacherId, classYear);
        }
    }

    private void addSubject(String name) {
        if (!exists("SELECT COUNT(*) FROM subjects WHERE name = ?", name)) {
            jdbcTemplate.update("INSERT INTO subjects (name) VALUES (?)", name);
        }
    }

    private void addTeacherSubject(Integer teacherId, Integer subjectId) {
        if (!exists("SELECT COUNT(*) FROM teacher_subject WHERE teacher_id = ? AND subject_id = ?", teacherId, subjectId)) {
            jdbcTemplate.update("INSERT INTO teacher_subject (teacher_id, subject_id) VALUES (?, ?)", teacherId, subjectId);
        }
    }

    private void addStudent(Integer userId, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM students WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO students (user_id, class_id) VALUES (?, ?)", userId, classId);
        }
    }

    private void addParentStudent(Integer parentId, Integer studentId) {
        if (!exists("SELECT COUNT(*) FROM parent_student WHERE parent_id = ? AND student_id = ?", parentId, studentId)) {
            jdbcTemplate.update("INSERT INTO parent_student (parent_id, student_id) VALUES (?, ?)", parentId, studentId);
        }
    }

    private void addSubjectGroup(Integer classId, Integer subjectId, Integer groupNumber) {
        if (!exists("SELECT COUNT(*) FROM subject_groups WHERE class_id = ? AND subject_id = ? AND group_number = ?",
                classId, subjectId, groupNumber)) {
            jdbcTemplate.update("INSERT INTO subject_groups (class_id, subject_id, group_number) VALUES (?, ?, ?)",
                    classId, subjectId, groupNumber);
        }
    }

    private void addStudentSubjectGroup(Integer studentId, Integer groupId) {
        if (!exists("SELECT COUNT(*) FROM student_subject_group WHERE student_id = ? AND group_id = ?", studentId, groupId)) {
            jdbcTemplate.update("INSERT INTO student_subject_group (student_id, group_id) VALUES (?, ?)", studentId, groupId);
        }
    }

    private void addClassSchedule(Integer classId, Integer teacherId, Integer subjectId, Integer groupId,
                                  Integer dayOfWeek, Integer lessonNumber, Integer roomNumber) {
        if (!exists("SELECT COUNT(*) FROM class_schedule WHERE class_id = ? AND day_of_week = ? AND lesson_number = ?",
                classId, dayOfWeek, lessonNumber)) {
            jdbcTemplate.update(
                    "INSERT INTO class_schedule (class_id, teacher_id, subject_id, group_id, day_of_week, lesson_number, room_number) " +
                            "VALUES (?, ?, ?, ?, ?, ?, ?)",
                    classId, teacherId, subjectId, groupId, dayOfWeek, lessonNumber, roomNumber);
        }
    }

    private void addGrade(Integer studentId, Integer subjectId, Integer teacherId, Double gradeValue, String description, LocalDate date) {
        if (!exists("SELECT COUNT(*) FROM grades WHERE student_id = ? AND subject_id = ? AND teacher_id = ? AND date = ?",
                studentId, subjectId, teacherId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, description, date) " +
                            "VALUES (?, ?, ?, ?, ?, ?)",
                    studentId, subjectId, teacherId, gradeValue, description, date);
        }
    }

    private void addAttendance(Integer studentId, Integer scheduleId, String status, LocalDate date) {
        if (!exists("SELECT COUNT(*) FROM attendance WHERE student_id = ? AND schedule_id = ? AND date = ?",
                studentId, scheduleId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO attendance (student_id, schedule_id, date, status) VALUES (?, ?, ?, ?)",
                    studentId, scheduleId, date, status);
        }
    }

    private void addTest(String title, Integer subjectId, Integer groupId, LocalDate date, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM tests WHERE title = ? AND subject_id = ? AND date = ?", title, subjectId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO tests (title, subject_id, group_id, date, class_id) VALUES (?, ?, ?, ?, ?)",
                    title, subjectId, groupId, date, classId);
        }
    }

    private void addEvent(String title, String description, LocalDate date, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM events WHERE title = ? AND date = ?", title, date)) {
            jdbcTemplate.update(
                    "INSERT INTO events (title, description, date, class_id) VALUES (?, ?, ?, ?)",
                    title, description, date, classId);
        }
    }

    private void addSlotException(Integer scheduleId, LocalDate exceptionDate, String type, Integer subTeacherId, String note) {
        if (!exists("SELECT COUNT(*) FROM slot_exceptions WHERE schedule_id = ? AND exception_date = ?", scheduleId, exceptionDate)) {
            jdbcTemplate.update(
                    "INSERT INTO slot_exceptions (schedule_id, exception_date, type, sub_teacher_id, note) " +
                            "VALUES (?, ?, ?, ?, ?)",
                    scheduleId, exceptionDate, type, subTeacherId, note);
        }
    }

    // --- GETTER METHODS ---

    private Integer getUserId(String username) {
        return jdbcTemplate.queryForObject("SELECT user_id FROM users WHERE username = ?", Integer.class, username);
    }

    private Integer getTeacherId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT teacher_id FROM teachers WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getParentId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT parent_id FROM parents WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getClassProfileId(String shortName) {
        return jdbcTemplate.queryForObject("SELECT id FROM class_profile WHERE short_name = ?", Integer.class, shortName);
    }

    private Integer getClassId(Integer classProfileId, String classYear) {
        return jdbcTemplate.queryForObject(
                "SELECT class_id FROM classes WHERE class_profile = ? AND class_year = ?",
                Integer.class, classProfileId, classYear);
    }

    private Integer getSubjectId(String name) {
        return jdbcTemplate.queryForObject("SELECT subject_id FROM subjects WHERE name = ?", Integer.class, name);
    }

    private Integer getStudentId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT student_id FROM students WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getSubjectGroupId(Integer classId, Integer subjectId, Integer groupNumber) {
        return jdbcTemplate.queryForObject(
                "SELECT group_id FROM subject_groups WHERE class_id = ? AND subject_id = ? AND group_number = ?",
                Integer.class, classId, subjectId, groupNumber);
    }

    private Integer getScheduleId(Integer classId, Integer dayOfWeek, Integer lessonNumber) {
        return jdbcTemplate.queryForObject(
                "SELECT schedule_id FROM class_schedule WHERE class_id = ? AND day_of_week = ? AND lesson_number = ?",
                Integer.class, classId, dayOfWeek, lessonNumber);
    }

    private boolean exists(String sql, Object... params) {
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, params);
        return count != null && count > 0;
    }
}
 */
/*
package com.egradebook.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.time.LocalDate;

@Component
public class DataInitializer implements CommandLineRunner {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void run(String... args) throws Exception {
        System.out.println("🔄 Initializing eGradebook database...");

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        // --- USERS ---
        addUser("admin", encoder.encode("admin123"), "admin");
        addUser("teacher1", encoder.encode("teacher123"), "teacher");
        addUser("teacher2", encoder.encode("teacher123"), "teacher");
        addUser("student1", encoder.encode("student123"), "student");
        addUser("student2", encoder.encode("student123"), "student");
        addUser("parent1", encoder.encode("parent123"), "parent");

        Integer adminUserId = getUserId("admin");
        Integer teacher1UserId = getUserId("teacher1");
        Integer teacher2UserId = getUserId("teacher2");
        Integer student1UserId = getUserId("student1");
        Integer student2UserId = getUserId("student2");
        Integer parent1UserId = getUserId("parent1");

        // --- PERSONAL DATA & CONTACT INFO ---
        addPersonalData(adminUserId, "Admin", "Adminowski", "00000000000");
        addPersonalData(teacher1UserId, "Jan", "Matematyczny", "11111111111");
        addPersonalData(teacher2UserId, "Anna", "Informatyczna", "22222222222");
        addPersonalData(student1UserId, "Adam", "Uczniowski", "33333333333");
        addPersonalData(student2UserId, "Ewa", "Uczniowska", "44444444444");
        addPersonalData(parent1UserId, "Tomasz", "Rodzicowski", "55555555555");

        addContactInfo(adminUserId, "123456789", "admin@school.edu", "School St. 1");
        addContactInfo(teacher1UserId, "111222333", "teacher1@school.edu", "Math St. 2");
        addContactInfo(teacher2UserId, "444555666", "teacher2@school.edu", "CS St. 3");
        addContactInfo(student1UserId, "777888999", "student1@school.edu", "Student St. 4");
        addContactInfo(student2UserId, "000111222", "student2@school.edu", "Student St. 5");
        addContactInfo(parent1UserId, "333444555", "parent1@school.edu", "Parent St. 6");

        // --- TEACHERS ---
        addTeacher(teacher1UserId);
        addTeacher(teacher2UserId);

        Integer teacher1Id = getTeacherId(teacher1UserId);
        Integer teacher2Id = getTeacherId(teacher2UserId);

        // --- PARENTS ---
        addParent(parent1UserId);
        Integer parent1Id = getParentId(parent1UserId);

        // --- CLASS PROFILES ---
        addClassProfile("1A", "First Grade - Class A");
        addClassProfile("2B", "Second Grade - Class B");

        Integer classProfile1AId = getClassProfileId("1A");
        Integer classProfile2BId = getClassProfileId("2B");

        // --- CLASSES ---
        addClass(classProfile1AId, teacher1Id, "2023");
        addClass(classProfile2BId, teacher2Id, "2023");

        Integer class1AId = getClassId(classProfile1AId, "2023");
        Integer class2BId = getClassId(classProfile2BId, "2023");

        // --- SUBJECTS ---
        addSubject("Mathematics");
        addSubject("Computer Science");
        addSubject("Physics");

        Integer mathId = getSubjectId("Mathematics");
        Integer csId = getSubjectId("Computer Science");
        Integer physicsId = getSubjectId("Physics");

        // --- TEACHER_SUBJECT ---
        addTeacherSubject(teacher1Id, mathId);
        addTeacherSubject(teacher1Id, physicsId);
        addTeacherSubject(teacher2Id, csId);

        // --- STUDENTS ---
        addStudent(student1UserId, class1AId);
        addStudent(student2UserId, class1AId);

        Integer student1Id = getStudentId(student1UserId);
        Integer student2Id = getStudentId(student2UserId);

        // --- PARENT_STUDENT ---
        addParentStudent(parent1Id, student1Id);
        addParentStudent(parent1Id, student2Id);

        // --- SUBJECT GROUPS ---
        addSubjectGroup(class1AId, mathId, 1); // Math group 1
        addSubjectGroup(class1AId, csId, 1);  // CS group 1
        addSubjectGroup(class1AId, physicsId, 1);  // Physics group 1

        Integer mathGroupId = getSubjectGroupId(class1AId, mathId, 1);
        Integer csGroupId = getSubjectGroupId(class1AId, csId, 1);
        Integer physicsGroupId = getSubjectGroupId(class1AId, physicsId, 1);

        // --- STUDENT_SUBJECT_GROUP ---
        addStudentSubjectGroup(student1Id, mathGroupId);
        addStudentSubjectGroup(student1Id, csGroupId);
        addStudentSubjectGroup(student1Id, physicsGroupId);
        addStudentSubjectGroup(student2Id, mathGroupId);
        addStudentSubjectGroup(student2Id, csGroupId);
        addStudentSubjectGroup(student2Id, physicsGroupId);

        // --- CLASS SCHEDULE ---
        addClassSchedule(class1AId, teacher1Id, mathId, mathGroupId, 1, 1, 101); // Monday, 1st lesson
        addClassSchedule(class1AId, teacher1Id, mathId, mathGroupId, 3, 2, 101); // Wednesday, 2nd lesson
        addClassSchedule(class1AId, teacher2Id, csId, csGroupId, 2, 3, 102);    // Tuesday, 3rd lesson
        addClassSchedule(class1AId, teacher1Id, physicsId, physicsGroupId, 4, 4, 103); // Thursday, 4th lesson

        // Pobierz identyfikatory planów lekcji
        Integer mathMondayScheduleId = getScheduleId(class1AId, 1, 1);
        Integer mathWednesdayScheduleId = getScheduleId(class1AId, 3, 2);
        Integer csTuesdayScheduleId = getScheduleId(class1AId, 2, 3);
        Integer physicsThursdayScheduleId = getScheduleId(class1AId, 4, 4);

        // Dodaj powiązania nauczycieli z klasami/przedmiotami (nowa tabela)
        addTeacherClassSubject(teacher1Id, class1AId, mathId, mathGroupId);
        addTeacherClassSubject(teacher1Id, class1AId, physicsId, physicsGroupId);
        addTeacherClassSubject(teacher2Id, class1AId, csId, csGroupId);

        // --- GRADES ---
        addGrade(student1Id, mathId, teacher1Id, 4.5, "Quiz 1", LocalDate.now().minusDays(10));
        addGrade(student1Id, mathId, teacher1Id, 5.0, "Homework", LocalDate.now().minusDays(5));
        addGrade(student2Id, mathId, teacher1Id, 3.5, "Quiz 1", LocalDate.now().minusDays(10));
        addGrade(student1Id, csId, teacher2Id, 4.0, "Project", LocalDate.now().minusDays(7));
        addGrade(student2Id, csId, teacher2Id, 4.5, "Project", LocalDate.now().minusDays(7));
        addGrade(student1Id, physicsId, teacher1Id, 4.0, "Lab Report", LocalDate.now().minusDays(3));
        addGrade(student2Id, physicsId, teacher1Id, 4.5, "Lab Report", LocalDate.now().minusDays(3));

        // --- ATTENDANCE ---
        addAttendance(student1Id, mathMondayScheduleId, "presence", LocalDate.now().minusDays(7));
        addAttendance(student1Id, mathWednesdayScheduleId, "late", LocalDate.now().minusDays(5));
        addAttendance(student2Id, mathMondayScheduleId, "absence", LocalDate.now().minusDays(7));
        addAttendance(student2Id, csTuesdayScheduleId, "presence", LocalDate.now().minusDays(6));
        addAttendance(student1Id, physicsThursdayScheduleId, "presence", LocalDate.now().minusDays(4));
        addAttendance(student2Id, physicsThursdayScheduleId, "excused absence", LocalDate.now().minusDays(4));

        // --- TESTS ---
        addTest("Midterm Exam", mathId, mathGroupId, LocalDate.now().plusDays(14), class1AId);
        addTest("Final Project", csId, csGroupId, LocalDate.now().plusDays(21), class1AId);
        addTest("Physics Test", physicsId, physicsGroupId, LocalDate.now().plusDays(10), class1AId);

        // --- EVENTS ---
        addEvent("Parent Meeting", "Quarterly parent-teacher meeting", LocalDate.now().plusDays(7), class1AId);
        addEvent("School Trip", "Science museum visit", LocalDate.now().plusDays(14), class1AId);
        addEvent("Physics Workshop", "Advanced physics workshop", LocalDate.now().plusDays(21), class1AId);

        // --- SLOT EXCEPTIONS ---
        addSlotException(mathMondayScheduleId, LocalDate.now().plusDays(1), "cancelled", null, "Teacher training");
        addSlotException(csTuesdayScheduleId, LocalDate.now().plusDays(2), "substitution", teacher1Id, "Substitute teacher");
        addSlotException(physicsThursdayScheduleId, LocalDate.now().plusDays(3), "cancelled", null, "Holiday");

        System.out.println("✅ eGradebook database initialized!");
    }

    // --- INSERT METHODS ---

    private void addUser(String username, String password, String role) {
        if (!exists("SELECT COUNT(*) FROM users WHERE username = ?", username)) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)",
                    username, password, role);
        }
    }

    private void addPersonalData(Integer userId, String name, String surname, String pesel) {
        if (!exists("SELECT COUNT(*) FROM personal_data WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)",
                    userId, name, surname, pesel);
        }
    }

    private void addContactInfo(Integer userId, String phone, String email, String address) {
        if (!exists("SELECT COUNT(*) FROM contact_info WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO contact_info (user_id, phone_number, email, address) VALUES (?, ?, ?, ?)",
                    userId, phone, email, address);
        }
    }

    private void addTeacher(Integer userId) {
        if (!exists("SELECT COUNT(*) FROM teachers WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO teachers (user_id) VALUES (?)", userId);
        }
    }

    private void addParent(Integer userId) {
        if (!exists("SELECT COUNT(*) FROM parents WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO parents (user_id) VALUES (?)", userId);
        }
    }

    private void addClassProfile(String shortName, String name) {
        if (!exists("SELECT COUNT(*) FROM class_profile WHERE short_name = ?", shortName)) {
            jdbcTemplate.update("INSERT INTO class_profile (short_name, name) VALUES (?, ?)", shortName, name);
        }
    }

    private void addClass(Integer classProfileId, Integer classTeacherId, String classYear) {
        if (!exists("SELECT COUNT(*) FROM classes WHERE class_profile = ? AND class_year = ?", classProfileId, classYear)) {
            jdbcTemplate.update("INSERT INTO classes (class_profile, class_teacher, class_year) VALUES (?, ?, ?)",
                    classProfileId, classTeacherId, classYear);
        }
    }

    private void addSubject(String name) {
        if (!exists("SELECT COUNT(*) FROM subjects WHERE name = ?", name)) {
            jdbcTemplate.update("INSERT INTO subjects (name) VALUES (?)", name);
        }
    }

    private void addTeacherSubject(Integer teacherId, Integer subjectId) {
        if (!exists("SELECT COUNT(*) FROM teacher_subject WHERE teacher_id = ? AND subject_id = ?", teacherId, subjectId)) {
            jdbcTemplate.update("INSERT INTO teacher_subject (teacher_id, subject_id) VALUES (?, ?)", teacherId, subjectId);
        }
    }

    private void addStudent(Integer userId, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM students WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO students (user_id, class_id) VALUES (?, ?)", userId, classId);
        }
    }

    private void addParentStudent(Integer parentId, Integer studentId) {
        if (!exists("SELECT COUNT(*) FROM parent_student WHERE parent_id = ? AND student_id = ?", parentId, studentId)) {
            jdbcTemplate.update("INSERT INTO parent_student (parent_id, student_id) VALUES (?, ?)", parentId, studentId);
        }
    }

    private void addSubjectGroup(Integer classId, Integer subjectId, Integer groupNumber) {
        if (!exists("SELECT COUNT(*) FROM subject_groups WHERE class_id = ? AND subject_id = ? AND group_number = ?",
                classId, subjectId, groupNumber)) {
            jdbcTemplate.update("INSERT INTO subject_groups (class_id, subject_id, group_number) VALUES (?, ?, ?)",
                    classId, subjectId, groupNumber);
        }
    }

    private void addStudentSubjectGroup(Integer studentId, Integer groupId) {
        if (!exists("SELECT COUNT(*) FROM student_subject_group WHERE student_id = ? AND group_id = ?", studentId, groupId)) {
            jdbcTemplate.update("INSERT INTO student_subject_group (student_id, group_id) VALUES (?, ?)", studentId, groupId);
        }
    }

    private void addClassSchedule(Integer classId, Integer teacherId, Integer subjectId, Integer groupId,
                                  Integer dayOfWeek, Integer lessonNumber, Integer roomNumber) {
        if (!exists("SELECT COUNT(*) FROM class_schedule WHERE class_id = ? AND day_of_week = ? AND lesson_number = ?",
                classId, dayOfWeek, lessonNumber)) {
            jdbcTemplate.update(
                    "INSERT INTO class_schedule (class_id, teacher_id, subject_id, group_id, day_of_week, lesson_number, room_number) " +
                            "VALUES (?, ?, ?, ?, ?, ?, ?)",
                    classId, teacherId, subjectId, groupId, dayOfWeek, lessonNumber, roomNumber);
        }
    }

    private void addGrade(Integer studentId, Integer subjectId, Integer teacherId, Double gradeValue, String description, LocalDate date) {
        if (!exists("SELECT COUNT(*) FROM grades WHERE student_id = ? AND subject_id = ? AND teacher_id = ? AND date = ?",
                studentId, subjectId, teacherId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, description, date) " +
                            "VALUES (?, ?, ?, ?, ?, ?)",
                    studentId, subjectId, teacherId, gradeValue, description, date);
        }
    }

    private void addAttendance(Integer studentId, Integer scheduleId, String status, LocalDate date) {
        if (!exists("SELECT COUNT(*) FROM attendance WHERE student_id = ? AND schedule_id = ? AND date = ?",
                studentId, scheduleId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO attendance (student_id, schedule_id, date, status) VALUES (?, ?, ?, ?)",
                    studentId, scheduleId, date, status);
        }
    }

    private void addTest(String title, Integer subjectId, Integer groupId, LocalDate date, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM tests WHERE title = ? AND subject_id = ? AND date = ?", title, subjectId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO tests (title, subject_id, group_id, date, class_id) VALUES (?, ?, ?, ?, ?)",
                    title, subjectId, groupId, date, classId);
        }
    }

    private void addEvent(String title, String description, LocalDate date, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM events WHERE title = ? AND date = ?", title, date)) {
            jdbcTemplate.update(
                    "INSERT INTO events (title, description, date, class_id) VALUES (?, ?, ?, ?)",
                    title, description, date, classId);
        }
    }

    private void addSlotException(Integer scheduleId, LocalDate exceptionDate, String type, Integer subTeacherId, String note) {
        if (!exists("SELECT COUNT(*) FROM slot_exceptions WHERE schedule_id = ? AND exception_date = ?", scheduleId, exceptionDate)) {
            jdbcTemplate.update(
                    "INSERT INTO slot_exceptions (schedule_id, exception_date, type, sub_teacher_id, note) " +
                            "VALUES (?, ?, ?, ?, ?)",
                    scheduleId, exceptionDate, type, subTeacherId, note);
        }
    }

    private void addTeacherClassSubject(Integer teacherId, Integer classId, Integer subjectId, Integer groupId) {
        if (!exists("SELECT COUNT(*) FROM teacher_class_subject WHERE teacher_id = ? AND class_id = ? AND subject_id = ? AND group_id = ?",
                teacherId, classId, subjectId, groupId)) {
            jdbcTemplate.update("INSERT INTO teacher_class_subject (teacher_id, class_id, subject_id, group_id) VALUES (?, ?, ?, ?)",
                    teacherId, classId, subjectId, groupId);
        }
    }

    // --- GETTER METHODS ---

    private Integer getUserId(String username) {
        return jdbcTemplate.queryForObject("SELECT user_id FROM users WHERE username = ?", Integer.class, username);
    }

    private Integer getTeacherId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT teacher_id FROM teachers WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getParentId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT parent_id FROM parents WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getClassProfileId(String shortName) {
        return jdbcTemplate.queryForObject("SELECT id FROM class_profile WHERE short_name = ?", Integer.class, shortName);
    }

    private Integer getClassId(Integer classProfileId, String classYear) {
        return jdbcTemplate.queryForObject(
                "SELECT class_id FROM classes WHERE class_profile = ? AND class_year = ?",
                Integer.class, classProfileId, classYear);
    }

    private Integer getSubjectId(String name) {
        return jdbcTemplate.queryForObject("SELECT subject_id FROM subjects WHERE name = ?", Integer.class, name);
    }

    private Integer getStudentId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT student_id FROM students WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getSubjectGroupId(Integer classId, Integer subjectId, Integer groupNumber) {
        return jdbcTemplate.queryForObject(
                "SELECT group_id FROM subject_groups WHERE class_id = ? AND subject_id = ? AND group_number = ?",
                Integer.class, classId, subjectId, groupNumber);
    }

    private Integer getScheduleId(Integer classId, Integer dayOfWeek, Integer lessonNumber) {
        return jdbcTemplate.queryForObject(
                "SELECT schedule_id FROM class_schedule WHERE class_id = ? AND day_of_week = ? AND lesson_number = ?",
                Integer.class, classId, dayOfWeek, lessonNumber);
    }

    private boolean exists(String sql, Object... params) {
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, params);
        return count != null && count > 0;
    }
}
*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.*;

@Component
public class DataInitializer implements CommandLineRunner {

    public class Faker {
        private final Random random = new Random();

        public Name name() {
            return new Name();
        }

        public Address address() {
            return new Address();
        }

        public Educator educator() {
            return new Educator();
        }

        public ClazzProfiles profile() { return new ClazzProfiles(); }

        public Internet internet() {
            return new Internet();
        }

        public Book book() {
            return new Book();
        }

        public Lorem lorem() {
            return new Lorem();
        }

        public Hipster hipster() {
            return new Hipster();
        }

        public Random random() {
            return random;
        }

        // --- PODKLASY ---

        public class Name {
            private final String[] firstNames = {"Jan", "Anna", "Piotr", "Ewa", "Katarzyna", "Tomasz", "Agnieszka", "Paweł", "Michał", "Magdalena"};
            private final String[] lastNames = {"Nowak", "Kowalski", "Wiśniewski", "Wójcik", "Kamiński", "Lewandowski", "Zieliński", "Szymański", "Woźniak", "Dąbrowski"};

            public String firstName() {
                return firstNames[random.nextInt(firstNames.length)];
            }
            public String lastName() {
                return lastNames[random.nextInt(lastNames.length)];
            }
            public String fullName() {
                return firstName() + " " + lastName();
            }
        }

        public class Address {
            private final String[] streets = {"Szkolna", "Polna", "Kwiatowa", "Lipowa", "Słoneczna", "Kolejowa", "Krótka", "Długa"};
            private final String[] cities = {"Warszawa", "Kraków", "Wrocław", "Poznań", "Gdańsk", "Łódź", "Katowice"};

            public String streetAddress() {
                return streets[random.nextInt(streets.length)] + " " + (random.nextInt(100) + 1);
            }
            public String city() {
                return cities[random.nextInt(cities.length)];
            }
        }

        public class Educator {
            private final String[] courses = {"Matematyka", "Fizyka", "Informatyka", "Biologia", "Geografia", "Historia", "WOS", "Angielski", "Chemia"};

            public String course() {
                return courses[random.nextInt(courses.length)];
            }
        }

        public class ClazzProfiles{
            private final String[] profiles = {"Mat-Chem", "Biol-Chem", "Mat-Fiz", "Mat-Geo", "Algo",
                    "Pol-Wos", "Biol+-Pol"};
            public String profile() {
                return profiles[random.nextInt(profiles.length)];
            }
        }

        public class Internet {
            public String emailAddress() {
                String[] domains = {"gmail.com", "wp.pl", "onet.pl", "edu.pl", "example.com"};
                String name = name().firstName().toLowerCase();
                String surname = name().lastName().toLowerCase();
                String domain = domains[random.nextInt(domains.length)];
                return name + "." + surname + random.nextInt(100) + "@" + domain;
            }
        }

        public class Book {
            private final String[] titles = {"Tajemnica szkoły", "Mistrz matematyki", "Ostatni eksperyment", "Bitwa o wiedzę", "Zagubiona praca domowa"};
            public String title() {
                return titles[random.nextInt(titles.length)];
            }
        }

        public class Lorem {
            private final String[] sentences = {
                    "To jest przykładowe zdanie.",
                    "Uczeń odrobił pracę domową.",
                    "W klasie było dziś głośno.",
                    "Lekcja minęła bardzo szybko.",
                    "Nauczyciel zadał test.",
                    "Nowy semestr już się zaczął.",
                    "Dzieci przygotowały projekt."
            };
            public String sentence() {
                return sentences[random.nextInt(sentences.length)];
            }
        }

        public class Hipster {
            private final String[] words = {"kombajn", "dzban", "pankejk", "kufel", "syfon", "hipster", "hipsteriada"};
            public String word() {
                return words[random.nextInt(words.length)];
            }
        }
    }



    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void run(String... args) throws Exception {
        Faker faker = new Faker();
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        System.out.println("🔄 Mass inserting test data...");



        int TEACHERS = 10;
        int CLASSES = 7;
        int CLASS_SIZE = 10;
        int SUBJECTS = 9;
        int PARENTS = CLASSES * CLASS_SIZE;

        addUser("admin", encoder.encode("admin123"), "admin");

        // --- SUBJECTS ---
        List<String> subjectNames = Arrays.asList("Matematyka", "Fizyka", "Informatyka", "Angielski", "Historia", "WOS", "Chemia");
        for (String subj : subjectNames) addSubject(subj);

        Map<String, Integer> subjectIds = new HashMap<>();
        for (String subj : subjectNames) subjectIds.put(subj, getSubjectId(subj));


        // --- TEACHERS ---
        List<Integer> teacherUserIds = new ArrayList<>();
            List<Integer> teacherIds = new ArrayList<>();
        for (int i = 1; i <= TEACHERS; i++) {
            String login = "teacher" + i;
            addUser(login, encoder.encode("teacher" + i), "teacher");
            Integer userId = getUserId(login);
            teacherUserIds.add(userId);
            addPersonalData(userId, faker.name().firstName(), faker.name().lastName(), genPesel(i));
            addContactInfo(userId, genPhone(i), faker.internet().emailAddress(), faker.address().streetAddress());
            addTeacher(userId);
            teacherIds.add(getTeacherId(userId));
        }

        // --- CLASS PROFILES & CLASSES ---
        for (int i = 1; i <= CLASSES; i++) {
            String shortName = String.valueOf((char)(65+i));
            addClassProfile(shortName, faker.profile().profile() + " (" + shortName + ")");
        }
        Map<String, Integer> classProfiles = new HashMap<>();
        for (int i = 1; i <= CLASSES; i++) {
            String shortName = String.valueOf((char)(65+i));
            classProfiles.put(shortName, getClassProfileId(shortName));
        }
        for (int i = 1; i <= CLASSES; i++) {
            int year = 2021 + (i % 3);
            addClass(classProfiles.get(String.valueOf((char)(65+i))), teacherIds.get(i), String.valueOf(year));
        }
        List<Integer> classIds = new ArrayList<>();
        for (int i = 1; i <= CLASSES; i++)
            classIds.add(getClassId(classProfiles.get(String.valueOf((char)(65+i))), String.valueOf(2021 + (i % 3))));


        // --- PARENTS & STUDENTS ---
        List<Integer> parentUserIds = new ArrayList<>();
        List<Integer> parentIds = new ArrayList<>();
        List<Integer> studentUserIds = new ArrayList<>();
        List<Integer> studentIds = new ArrayList<>();
        for (int classNum = 0; classNum < CLASSES; classNum++) {
            for (int i = 1; i <= CLASS_SIZE; i++) {
                int idx = classNum * CLASS_SIZE + i;
                // Parent
                String plogin = "parent" + idx;
                addUser(plogin, encoder.encode("parent" + idx), "parent");
                Integer puser = getUserId(plogin);
                addPersonalData(puser, faker.name().firstName(), faker.name().lastName(), genPesel(idx + 1000));
                addContactInfo(puser, genPhone(idx + 500), faker.internet().emailAddress(), faker.address().streetAddress());
                addParent(puser);
                Integer parentId = getParentId(puser);
                parentUserIds.add(puser);
                parentIds.add(parentId);

                // Student
                String slogin = "student" + idx;
                addUser(slogin, encoder.encode("student" + idx), "student");
                Integer suser = getUserId(slogin);
                addPersonalData(suser, faker.name().firstName(), faker.name().lastName(), genPesel(idx + 2000));
                addContactInfo(suser, genPhone(idx + 1000), faker.internet().emailAddress(), faker.address().streetAddress());
                addStudent(suser, classIds.get(classNum));
                Integer studentId = getStudentId(suser);
                studentUserIds.add(suser);
                studentIds.add(studentId);

                addParentStudent(parentId, studentId);
            }
        }

        // --- SUBJECT GROUPS ---
        Map<String, Integer> subjectGroups = new HashMap<>();
        for (Integer classId : classIds) {
            for (String subj : subjectNames) {
                for (int group = 1; group <= 2; group++) {
                    addSubjectGroup(classId, subjectIds.get(subj), group);
                    subjectGroups.put(classId + "_" + subjectIds.get(subj) + "_" + group, getSubjectGroupId(classId, subjectIds.get(subj), group));
                }
            }
        }

        // --- STUDENT SUBJECT GROUPS ---
        for (int i = 0; i < studentIds.size(); i++) {
            int classIdx = i / CLASS_SIZE;
            Integer classId = classIds.get(classIdx);
            for (String subj : subjectNames) {
                for (int group = 1; group <= 2; group++) {
                    if (faker.random().nextBoolean()) {
                        Integer groupId = subjectGroups.get(classId + "_" + subjectIds.get(subj) + "_" + group);
                        addStudentSubjectGroup(studentIds.get(i), groupId);
                    }
                }
            }
        }

        // --- TEACHER-CLASS-SUBJECT GROUPS ---
        for (Integer teacherId : teacherIds) {
            for (Integer classId : classIds) {
                for (String subj : subjectNames) {
                    for (int group = 1; group <= 2; group++) {
                        if (faker.random().nextInt(100) < 25) { // losowo 25% szansy
                            Integer groupId = subjectGroups.get(classId + "_" + subjectIds.get(subj) + "_" + group);
                            addTeacherSubject(teacherId, subjectIds.get(subj));
                            addTeacherClassSubject(teacherId, classId, subjectIds.get(subj), groupId);
                        }
                    }
                }
            }
        }

        // --- CLASS SCHEDULE ---
        Map<String, Integer> scheduleMap = new HashMap<>();
        int[] availableRooms = {101, 102, 103, 104, 105, 106, 201, 202, 203};
        for (Integer classId : classIds) {
            for (int day = 1; day <= 5; day++) { // poniedziałek-piątek
                for (int lesson = 1; lesson <= 6; lesson++) {
                    // Wybierz nauczyciela, przedmiot, grupę
                    String subj = subjectNames.get(faker.random().nextInt(subjectNames.size()));
                    int group = faker.random().nextInt(2) + 1;
                    Integer groupId = subjectGroups.get(classId + "_" + subjectIds.get(subj) + "_" + group);
                    Integer teacherId = teacherIds.get(faker.random().nextInt(teacherIds.size()));

                    int room = availableRooms[faker.random().nextInt(availableRooms.length)];
                    addClassSchedule(classId, teacherId, subjectIds.get(subj), groupId, day, lesson, room);
                    int scheduleId = getScheduleId(classId, day, lesson);
                    scheduleMap.put(classId + "_" + day + "_" + lesson, scheduleId);
                }
            }
        }

        // --- GRADES ---
        List<String> gradeDescriptions = Arrays.asList("Kartkówka", "Sprawdzian", "Praca domowa", "Projekt", "Odpowiedź ustna");
        for (Integer studentId : studentIds) {
            int classIdx = studentIds.indexOf(studentId) / CLASS_SIZE;
            Integer classId = classIds.get(classIdx);
            for (String subj : subjectNames) {
                for (int n = 0; n < 4; n++) {
                    Integer teacherId = teacherIds.get(faker.random().nextInt(teacherIds.size()));
                    double gradeValue = 2.0 + faker.random().nextDouble() * 4.0;
                    gradeValue = Math.round(gradeValue * 2) / 2.0;
                    String desc = gradeDescriptions.get(faker.random().nextInt(gradeDescriptions.size()));
                    LocalDate date = LocalDate.now().minusDays(faker.random().nextInt(120));
                    addGrade(studentId, subjectIds.get(subj), teacherId, gradeValue, desc, date);
                }
            }
        }

        // --- ATTENDANCE ---
        List<String> statuses = Arrays.asList("presence", "absence", "late", "excused absence");
        for (Integer studentId : studentIds) {
            int classIdx = studentIds.indexOf(studentId) / CLASS_SIZE;
            Integer classId = classIds.get(classIdx);
            for (int i = 0; i < 18; i++) {
                int day = faker.random().nextInt(1, 5);
                int lesson = faker.random().nextInt(1, 6);
                Integer scheduleId = scheduleMap.get(classId + "_" + day + "_" + lesson);
                LocalDate date = LocalDate.now().minusDays(faker.random().nextInt(120));
                String status = statuses.get(faker.random().nextInt(statuses.size()));
                addAttendance(studentId, scheduleId, status, date);
            }
        }

        // --- TESTS ---
        for (Integer classId : classIds) {
            for (String subj : subjectNames) {
                for (int n = 0; n < 3; n++) {
                    Integer groupId = subjectGroups.get(classId + "_" + subjectIds.get(subj) + "_" + (faker.random().nextInt(2) + 1));
                    String title = subj + " test " + (n + 1);
                    LocalDate date = LocalDate.now().plusDays(faker.random().nextInt(7, 90));
                    addTest(title, subjectIds.get(subj), groupId, date, classId);
                }
            }
        }

        // --- EVENTS ---
        for (Integer classId : classIds) {
            for (int n = 0; n < 4; n++) {
                String title = "Wydarzenie " + (n + 1) + " " + faker.book().title();
                String desc = faker.lorem().sentence();
                LocalDate date = LocalDate.now().plusDays(faker.random().nextInt(15, 180));
                addEvent(title, desc, date, classId);
            }
        }

        // --- SLOT EXCEPTIONS ---
        for (Integer classId : classIds) {
            for (int i = 0; i < 4; i++) {
                int day = faker.random().nextInt(1, 5);
                int lesson = faker.random().nextInt(1, 6);
                Integer scheduleId = scheduleMap.get(classId + "_" + day + "_" + lesson);
                LocalDate exDate = LocalDate.now().plusDays(faker.random().nextInt(5, 100));
                String type = faker.random().nextBoolean() ? "cancelled" : "substitution";
                Integer subTeacherId = (type.equals("substitution") ? teacherIds.get(faker.random().nextInt(teacherIds.size())) : null);
                String note = type.equals("cancelled")
                        ? "Odwołana lekcja: " + faker.hipster().word()
                        : "Zastępstwo: " + faker.name().fullName();

                addSlotException(scheduleId, exDate, type, subTeacherId, note);
            }
        }
        System.out.println("✅ MASS eGradebook database initialized!");
    }
    private String genPesel(int idx) {
        // Bardzo uproszczony generator PESEL (unikalny, 11 cyfr)
        return String.valueOf(70000000000L + idx);
    }

    private String genPhone(int idx) {
        String s = String.valueOf(500000000 + idx);
        return s.substring(0, 9);
    }

    // --- INSERT METHODS ---

    private void addUser(String username, String password, String role) {
        if (!exists("SELECT COUNT(*) FROM users WHERE username = ?", username)) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)",
                    username, password, role);
        }
    }

    private void addPersonalData(Integer userId, String name, String surname, String pesel) {
        if (!exists("SELECT COUNT(*) FROM personal_data WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)",
                    userId, name, surname, pesel);
        }
    }

    private void addContactInfo(Integer userId, String phone, String email, String address) {
        if (!exists("SELECT COUNT(*) FROM contact_info WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO contact_info (user_id, phone_number, email, address) VALUES (?, ?, ?, ?)",
                    userId, phone, email, address);
        }
    }

    private void addTeacher(Integer userId) {
        if (!exists("SELECT COUNT(*) FROM teachers WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO teachers (user_id) VALUES (?)", userId);
        }
    }

    private void addParent(Integer userId) {
        if (!exists("SELECT COUNT(*) FROM parents WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO parents (user_id) VALUES (?)", userId);
        }
    }

    private void addClassProfile(String shortName, String name) {
        if (!exists("SELECT COUNT(*) FROM class_profile WHERE short_name = ?", shortName)) {
            jdbcTemplate.update("INSERT INTO class_profile (short_name, name) VALUES (?, ?)", shortName, name);
        }
    }

    private void addClass(Integer classProfileId, Integer classTeacherId, String classYear) {
        if (!exists("SELECT COUNT(*) FROM classes WHERE class_profile = ? AND class_year = ?", classProfileId, classYear)) {
            jdbcTemplate.update("INSERT INTO classes (class_profile, class_teacher, class_year) VALUES (?, ?, ?)",
                    classProfileId, classTeacherId, classYear);
        }
    }

    private void addSubject(String name) {
        if (!exists("SELECT COUNT(*) FROM subjects WHERE name = ?", name)) {
            jdbcTemplate.update("INSERT INTO subjects (name) VALUES (?)", name);
        }
    }

    private void addTeacherSubject(Integer teacherId, Integer subjectId) {
        if (!exists("SELECT COUNT(*) FROM teacher_subject WHERE teacher_id = ? AND subject_id = ?", teacherId, subjectId)) {
            jdbcTemplate.update("INSERT INTO teacher_subject (teacher_id, subject_id) VALUES (?, ?)", teacherId, subjectId);
        }
    }

    private void addStudent(Integer userId, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM students WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO students (user_id, class_id) VALUES (?, ?)", userId, classId);
        }
    }

    private void addParentStudent(Integer parentId, Integer studentId) {
        if (!exists("SELECT COUNT(*) FROM parent_student WHERE parent_id = ? AND student_id = ?", parentId, studentId)) {
            jdbcTemplate.update("INSERT INTO parent_student (parent_id, student_id) VALUES (?, ?)", parentId, studentId);
        }
    }

    private void addSubjectGroup(Integer classId, Integer subjectId, Integer groupNumber) {
        if (!exists("SELECT COUNT(*) FROM subject_groups WHERE class_id = ? AND subject_id = ? AND group_number = ?",
                classId, subjectId, groupNumber)) {
            jdbcTemplate.update("INSERT INTO subject_groups (class_id, subject_id, group_number) VALUES (?, ?, ?)",
                    classId, subjectId, groupNumber);
        }
    }

    private void addStudentSubjectGroup(Integer studentId, Integer groupId) {
        if (!exists("SELECT COUNT(*) FROM student_subject_group WHERE student_id = ? AND group_id = ?", studentId, groupId)) {
            jdbcTemplate.update("INSERT INTO student_subject_group (student_id, group_id) VALUES (?, ?)", studentId, groupId);
        }
    }

    private void addClassSchedule(Integer classId, Integer teacherId, Integer subjectId, Integer groupId,
                                  Integer dayOfWeek, Integer lessonNumber, Integer roomNumber) {
        if (!exists("SELECT COUNT(*) FROM class_schedule WHERE class_id = ? AND day_of_week = ? AND lesson_number = ?",
                classId, dayOfWeek, lessonNumber)) {
            jdbcTemplate.update(
                    "INSERT INTO class_schedule (class_id, teacher_id, subject_id, group_id, day_of_week, lesson_number, room_number) " +
                            "VALUES (?, ?, ?, ?, ?, ?, ?)",
                    classId, teacherId, subjectId, groupId, dayOfWeek, lessonNumber, roomNumber);
        }
    }

    private void addGrade(Integer studentId, Integer subjectId, Integer teacherId, Double gradeValue, String description, LocalDate date) {
        if (!exists("SELECT COUNT(*) FROM grades WHERE student_id = ? AND subject_id = ? AND teacher_id = ? AND date = ?",
                studentId, subjectId, teacherId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, description, date) " +
                            "VALUES (?, ?, ?, ?, ?, ?)",
                    studentId, subjectId, teacherId, gradeValue, description, date);
        }
    }

    private void addAttendance(Integer studentId, Integer scheduleId, String status, LocalDate date) {
        if (!exists("SELECT COUNT(*) FROM attendance WHERE student_id = ? AND schedule_id = ? AND date = ?",
                studentId, scheduleId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO attendance (student_id, schedule_id, date, status) VALUES (?, ?, ?, ?)",
                    studentId, scheduleId, date, status);
        }
    }

    private void addTest(String title, Integer subjectId, Integer groupId, LocalDate date, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM tests WHERE title = ? AND subject_id = ? AND date = ?", title, subjectId, date)) {
            jdbcTemplate.update(
                    "INSERT INTO tests (title, subject_id, group_id, date, class_id) VALUES (?, ?, ?, ?, ?)",
                    title, subjectId, groupId, date, classId);
        }
    }

    private void addEvent(String title, String description, LocalDate date, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM events WHERE title = ? AND date = ?", title, date)) {
            jdbcTemplate.update(
                    "INSERT INTO events (title, description, date, class_id) VALUES (?, ?, ?, ?)",
                    title, description, date, classId);
        }
    }

    private void addSlotException(Integer scheduleId, LocalDate exceptionDate, String type, Integer subTeacherId, String note) {
        if (!exists("SELECT COUNT(*) FROM slot_exceptions WHERE schedule_id = ? AND exception_date = ?", scheduleId, exceptionDate)) {
            jdbcTemplate.update(
                    "INSERT INTO slot_exceptions (schedule_id, exception_date, type, sub_teacher_id, note) " +
                            "VALUES (?, ?, ?, ?, ?)",
                    scheduleId, exceptionDate, type, subTeacherId, note);
        }
    }

    private void addTeacherClassSubject(Integer teacherId, Integer classId, Integer subjectId, Integer groupId) {
        if (!exists("SELECT COUNT(*) FROM teacher_class_subject WHERE teacher_id = ? AND class_id = ? AND subject_id = ? AND group_id = ?",
                teacherId, classId, subjectId, groupId)) {
            jdbcTemplate.update("INSERT INTO teacher_class_subject (teacher_id, class_id, subject_id, group_id) VALUES (?, ?, ?, ?)",
                    teacherId, classId, subjectId, groupId);
        }
    }

    // --- GETTER METHODS ---

    private Integer getUserId(String username) {
        return jdbcTemplate.queryForObject("SELECT user_id FROM users WHERE username = ?", Integer.class, username);
    }

    private Integer getTeacherId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT teacher_id FROM teachers WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getParentId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT parent_id FROM parents WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getClassProfileId(String shortName) {
        return jdbcTemplate.queryForObject("SELECT id FROM class_profile WHERE short_name = ?", Integer.class, shortName);
    }

    private Integer getClassId(Integer classProfileId, String classYear) {
        return jdbcTemplate.queryForObject(
                "SELECT class_id FROM classes WHERE class_profile = ? AND class_year = ?",
                Integer.class, classProfileId, classYear);
    }

    private Integer getSubjectId(String name) {
        return jdbcTemplate.queryForObject("SELECT subject_id FROM subjects WHERE name = ?", Integer.class, name);
    }

    private Integer getStudentId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT student_id FROM students WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getSubjectGroupId(Integer classId, Integer subjectId, Integer groupNumber) {
        return jdbcTemplate.queryForObject(
                "SELECT group_id FROM subject_groups WHERE class_id = ? AND subject_id = ? AND group_number = ?",
                Integer.class, classId, subjectId, groupNumber);
    }

    private Integer getScheduleId(Integer classId, Integer dayOfWeek, Integer lessonNumber) {
        return jdbcTemplate.queryForObject(
                "SELECT schedule_id FROM class_schedule WHERE class_id = ? AND day_of_week = ? AND lesson_number = ?",
                Integer.class, classId, dayOfWeek, lessonNumber);
    }

    private boolean exists(String sql, Object... params) {
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, params);
        return count != null && count > 0;
    }

}