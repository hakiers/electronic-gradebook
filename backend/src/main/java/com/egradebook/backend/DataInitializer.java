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