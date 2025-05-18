package com.egradebook.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer implements CommandLineRunner {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void run(String... args) throws Exception {
        System.out.println("🔄 Initializing database...");

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        // --- USERS ---
        addUser("admin", encoder.encode("admin123"), "admin");
        addUser("teacher1", encoder.encode("teacher123"), "teacher");
        addUser("teacher2", encoder.encode("teacher123"), "teacher");
        addUser("student1A1", encoder.encode("student123"), "student");
        addUser("student1A2", encoder.encode("student123"), "student");
        addUser("parent1", encoder.encode("parent123"), "parent");

        Integer teacher1UserId = getUserId("teacher1");
        Integer teacher2UserId = getUserId("teacher2");
        Integer student1A1UserId = getUserId("student1A1");
        Integer student1A2UserId = getUserId("student1A2");
        Integer parent1UserId = getUserId("parent1");

        // --- TEACHERS ---
        addTeacher(teacher1UserId);
        addTeacher(teacher2UserId);

        Integer teacher1Id = getTeacherId("teacher1");
        Integer teacher2Id = getTeacherId("teacher2");

        // --- SUBJECTS ---
        addSubject("Matematyka");
        addSubject("Informatyka");

        Integer mathId = getSubjectId("Matematyka");
        Integer infoId = getSubjectId("Informatyka");

        // --- CLASSES ---
        addClass("1A", teacher1Id);

        Integer class1AId = getClassId("1A");

        // --- TEACHER_CLASS_SUBJECT ---
        addTeacherClassSubject(teacher1Id, class1AId, mathId);
        addTeacherSubject(teacher1Id, mathId);
        addTeacherClassSubject(teacher2Id, class1AId, infoId);
        addTeacherSubject(teacher2Id, infoId);

        // --- STUDENTS ---
        addStudent(student1A1UserId, class1AId);
        addStudent(student1A2UserId, class1AId);

        Integer student1A1Id = getStudentId(student1A1UserId);
        Integer student1A2Id = getStudentId(student1A2UserId);

        // --- PARENT ---
        //addParent(parent1UserId);
        //addParentStudent(parent1UserId, student1A1Id);

        // --- CLASS_SCHEDULE ---
        addClassSchedule(class1AId, teacher1Id, mathId, 1, 1, 101); // poniedziałek, lekcja 1, sala 101
        addClassSchedule(class1AId, teacher1Id, mathId, 3, 2, 102); // środa, lekcja 2, sala 102
        addClassSchedule(class1AId, teacher2Id, infoId, 5, 1, 101);

        // --- GRADE ---
        addGrade(student1A1Id, mathId, teacher1Id, 4.5f, "Pierwsza ocena");
        addGrade(student1A2Id, mathId, teacher1Id, 5.0f, "Druga ocena");
        addGrade(student1A1Id, infoId, teacher2Id, 3.5f, "Pierwsza ocena");
        addGrade(student1A2Id, infoId, teacher2Id, 4.0f, "Druga ocena");

        // --- ATTENDANCE ---
        addAttendance(student1A1Id, 1, "present");
        addAttendance(student1A2Id, 2, "absent");

        // --- TEST ---
        addTest("Sprawdzian z algebry", mathId, class1AId);

        // --- EVENTS ---
        addEvent("Dzień Sportu", "Zawody sportowe", class1AId);

        // --- STUDENT_GROUP ---
        addStudentGroup(class1AId, "Grupa1");
        Integer group1Id = getGroupId("Grupa1");

        // --- GROUP_MEMBERSHIPS ---
        addGroupMembership(group1Id, student1A1Id);

        // --- SLOT_EXCEPTIONS ---
        addSlotException(1, "cancelled", teacher1Id, "Nauczyciel chory");

        System.out.println("✅ Database initialized!");
    }

    // --- INSERTS WITH EXISTS CHECKS ---

    private void addUser(String username, String password, String role) {
        if (!exists("SELECT COUNT(*) FROM users WHERE username = ?", username)) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)", username, password, role);
            Integer userId = getUserId(username);
            jdbcTemplate.update("INSERT INTO contact_info (user_id, phone_number, email, address) VALUES (?, ?, ?, ?)",
                    userId, generatePhone(), username + "@mail.com", "ul. Przykładowa 1");
            jdbcTemplate.update("INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)",
                    userId, capitalize(username), "Kowalski", generatePesel(username));
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

    private void addParentStudent(Integer parentId, Integer studentId) {
        if (!exists("SELECT COUNT(*) FROM parent_student WHERE parent_id = ? AND student_id = ?", parentId, studentId)) {
            jdbcTemplate.update("INSERT INTO parent_student (parent_id, student_id) VALUES (?, ?)", parentId, studentId);
        }
    }

    private void addSubject(String name) {
        if (!exists("SELECT COUNT(*) FROM subjects WHERE name = ?", name)) {
            jdbcTemplate.update("INSERT INTO subjects (name) VALUES (?)", name);
        }
    }

    private void addClass(String name, Integer classTeacherId) {
        if (!exists("SELECT COUNT(*) FROM classes WHERE name = ?", name)) {
            jdbcTemplate.update("INSERT INTO classes (name, class_teacher) VALUES (?, ?)", name, classTeacherId);
        }
    }

    private void addTeacherClassSubject(Integer teacherId, Integer classId, Integer subjectId) {
        if (!exists("SELECT COUNT(*) FROM teacher_class_subject WHERE teacher_id = ? AND class_id = ? AND subject_id = ?", teacherId, classId, subjectId)) {
            jdbcTemplate.update("INSERT INTO teacher_class_subject (teacher_id, class_id, subject_id) VALUES (?, ?, ?)", teacherId, classId, subjectId);
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

    private void addClassSchedule(Integer classId, Integer teacherId, Integer subjectId, int dayOfWeek, int lessonNumber, int roomNumber) {
        if (!exists("SELECT COUNT(*) FROM class_schedule WHERE class_id = ? AND day_of_week = ? AND lesson_number = ?", classId, dayOfWeek, lessonNumber)) {
            jdbcTemplate.update("INSERT INTO class_schedule (class_id, teacher_id, subject_id, day_of_week, lesson_number, room_number) VALUES (?, ?, ?, ?, ?, ?)",
                    classId, teacherId, subjectId, dayOfWeek, lessonNumber, roomNumber);
        }
    }

    private void addGrade(Integer studentId, Integer subjectId, Integer teacherId, float gradeValue, String desc) {
        if (!exists("SELECT COUNT(*) FROM grades WHERE student_id = ? AND subject_id = ? AND teacher_id = ?", studentId, subjectId, teacherId)) {
            jdbcTemplate.update("INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, date, description) VALUES (?, ?, ?, ?, CURRENT_DATE, ?)",
                    studentId, subjectId, teacherId, gradeValue, desc);
        }
    }

    private void addAttendance(Integer studentId, Integer scheduleId, String status) {
        if (!exists("SELECT COUNT(*) FROM attendance WHERE student_id = ? AND schedule_id = ? AND date = CURRENT_DATE", studentId, scheduleId)) {
            jdbcTemplate.update("INSERT INTO attendance (student_id, schedule_id, date, status) VALUES (?, ?, CURRENT_DATE, ?)",
                    studentId, scheduleId, status);
        }
    }

    private void addTest(String title, Integer subjectId, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM tests WHERE title = ? AND subject_id = ? AND class_id = ?", title, subjectId, classId)) {
            jdbcTemplate.update("INSERT INTO tests (title, subject_id, date, class_id) VALUES (?, ?, CURRENT_DATE, ?)",
                    title, subjectId, classId);
        }
    }

    private void addEvent(String title, String description, Integer classId) {
        if (!exists("SELECT COUNT(*) FROM events WHERE title = ? AND class_id = ?", title, classId)) {
            jdbcTemplate.update("INSERT INTO events (title, description, date, class_id) VALUES (?, ?, CURRENT_DATE, ?)",
                    title, description, classId);
        }
    }

    private void addStudentGroup(Integer classId, String groupName) {
        if (!exists("SELECT COUNT(*) FROM student_groups WHERE class_id = ? AND name = ?", classId, groupName)) {
            jdbcTemplate.update("INSERT INTO student_groups (class_id, name) VALUES (?, ?)", classId, groupName);
        }
    }

    private void addGroupMembership(Integer groupId, Integer studentId) {
        if (!exists("SELECT COUNT(*) FROM group_memberships WHERE group_id = ? AND student_id = ? AND valid_from = CURRENT_DATE", groupId, studentId)) {
            jdbcTemplate.update("INSERT INTO group_memberships (group_id, student_id, valid_from) VALUES (?, ?, CURRENT_DATE)",
                    groupId, studentId);
        }
    }

    private void addSlotException(Integer scheduleId, String type, Integer subTeacherId, String note) {
        if (!exists("SELECT COUNT(*) FROM slot_exceptions WHERE schedule_id = ? AND exception_date = CURRENT_DATE AND type = ?", scheduleId, type)) {
            jdbcTemplate.update("INSERT INTO slot_exceptions (schedule_id, exception_date, type, sub_teacher_id, note) VALUES (?, CURRENT_DATE, ?, ?, ?)",
                    scheduleId, type, subTeacherId, note);
        }
    }

    // --- HELPERS ---

    private Integer getUserId(String username) {
        return jdbcTemplate.queryForObject("SELECT user_id FROM users WHERE username = ?", Integer.class, username);
    }

    private Integer getTeacherId(String username) {
        Integer userId = getUserId(username);
        return jdbcTemplate.queryForObject("SELECT teacher_id FROM teachers WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getSubjectId(String name) {
        return jdbcTemplate.queryForObject("SELECT subject_id FROM subjects WHERE name = ?", Integer.class, name);
    }

    private Integer getClassId(String name) {
        return jdbcTemplate.queryForObject("SELECT class_id FROM classes WHERE name = ?", Integer.class, name);
    }

    private Integer getStudentId(Integer userId) {
        return jdbcTemplate.queryForObject("SELECT student_id FROM students WHERE user_id = ?", Integer.class, userId);
    }

    private Integer getGroupId(String name) {
        return jdbcTemplate.queryForObject("SELECT group_id FROM student_groups WHERE name = ?", Integer.class, name);
    }

    private boolean exists(String sql, Object... params) {
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, params);
        return count != null && count > 0;
    }

    private String generatePhone() {
        return "51" + (int)(Math.random() * 1_000_0000 + 100_0000);
    }

    private String generatePesel(String username) {
        String base = String.valueOf(username.hashCode()).replace("-", "");
        return String.format("%011d", Long.parseLong(base.substring(0, Math.min(11, base.length()))));
    }

    private String capitalize(String input) {
        if (input == null || input.isEmpty()) return input;
        return input.substring(0, 1).toUpperCase() + input.substring(1);
    }
}
