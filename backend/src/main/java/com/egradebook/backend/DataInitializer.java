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
        System.out.println("Checking database...");

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        // ADMIN
        if (!userExists("admin")) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)", "admin", encoder.encode("admin123"), "admin");
            System.out.println("Added admin user");
        }

        // TEACHER 1
        if (!userExists("teacher1")) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)", "teacher1", encoder.encode("teacher123"), "teacher");
            Integer userId = getUserId("teacher1");
            jdbcTemplate.update("INSERT INTO teachers (user_id) VALUES (?)", userId);
            System.out.println("Added teacher1");
        }

        // TEACHER 2
        if (!userExists("teacher2")) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)", "teacher2", encoder.encode("teacher123"), "teacher");
            Integer userId = getUserId("teacher2");
            jdbcTemplate.update("INSERT INTO teachers (user_id) VALUES (?)", userId);
            System.out.println("Added teacher2");
        }

        Integer teacher1Id = getTeacherId("teacher1");
        Integer teacher2Id = getTeacherId("teacher2");

        // SUBJECTS
        if (!subjectExists("Matematyka")) {
            jdbcTemplate.update("INSERT INTO subjects (name) VALUES (?)", "Matematyka");
            System.out.println("Added subject Matematyka");
        }
        if (!subjectExists("Informatyka")) {
            jdbcTemplate.update("INSERT INTO subjects (name) VALUES (?)", "Informatyka");
            System.out.println("Added subject Informatyka");
        }

        Integer mathId = getSubjectId("Matematyka");
        Integer infoId = getSubjectId("Informatyka");

        // CLASSES
        if (!classExists("1A")) {
            jdbcTemplate.update("INSERT INTO classes (name, class_teacher) VALUES (?, ?)", "1A", teacher1Id);
            System.out.println("Added class 1A");
        }
        if (!classExists("1B")) {
            jdbcTemplate.update("INSERT INTO classes (name, class_teacher) VALUES (?, ?)", "1B", teacher2Id);
            System.out.println("Added class 1B");
        }

        Integer class1A = getClassId("1A");
        Integer class1B = getClassId("1B");

        // TEACHER_CLASS_SUBJECT
        insertTeacherClassSubject(teacher1Id, class1A, mathId);
        insertTeacherClassSubject(teacher2Id, class1B, infoId);

        // STUDENTS + grades
        addStudentWithGrade("student1A1", "student123", class1A, mathId, teacher1Id, 4.5f);
        addStudentWithGrade("student1A2", "student123", class1A, mathId, teacher1Id, 5.0f);
        addStudentWithGrade("student1B1", "student123", class1B, infoId, teacher2Id, 3.5f);
        addStudentWithGrade("student1B2", "student123", class1B, infoId, teacher2Id, 4.0f);

        System.out.println("✅ Sample data initialized");
    }

    private boolean userExists(String username) {
        Integer count = jdbcTemplate.queryForObject("SELECT COUNT(*) FROM users WHERE username = ?", Integer.class, username);
        return count != null && count > 0;
    }

    private Integer getUserId(String username) {
        return jdbcTemplate.queryForObject("SELECT user_id FROM users WHERE username = ?", Integer.class, username);
    }

    private Integer getTeacherId(String username) {
        Integer userId = getUserId(username);
        return jdbcTemplate.queryForObject("SELECT teacher_id FROM teachers WHERE user_id = ?", Integer.class, userId);
    }

    private boolean subjectExists(String name) {
        Integer count = jdbcTemplate.queryForObject("SELECT COUNT(*) FROM subjects WHERE name = ?", Integer.class, name);
        return count != null && count > 0;
    }

    private Integer getSubjectId(String name) {
        return jdbcTemplate.queryForObject("SELECT subject_id FROM subjects WHERE name = ?", Integer.class, name);
    }

    private boolean classExists(String name) {
        Integer count = jdbcTemplate.queryForObject("SELECT COUNT(*) FROM classes WHERE name = ?", Integer.class, name);
        return count != null && count > 0;
    }

    private Integer getClassId(String name) {
        return jdbcTemplate.queryForObject("SELECT class_id FROM classes WHERE name = ?", Integer.class, name);
    }

    private void insertTeacherClassSubject(Integer teacherId, Integer classId, Integer subjectId) {
        Integer count = jdbcTemplate.queryForObject("""
            SELECT COUNT(*) FROM teacher_class_subject WHERE teacher_id = ? AND class_id = ? AND subject_id = ?
        """, Integer.class, teacherId, classId, subjectId);
        if (count == 0) {
            jdbcTemplate.update("INSERT INTO teacher_class_subject (teacher_id, class_id, subject_id) VALUES (?, ?, ?)", teacherId, classId, subjectId);
            System.out.println("Linked teacher " + teacherId + " with class " + classId + " and subject " + subjectId);
        }
    }

    private void addStudentWithGrade(String username, String password, Integer classId, Integer subjectId, Integer teacherId, float gradeValue) {
        if (!userExists(username)) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)", username, new BCryptPasswordEncoder().encode(password), "student");
            Integer userId = getUserId(username);
            jdbcTemplate.update("INSERT INTO students (user_id, class_id) VALUES (?, ?)", userId, classId);
            Integer studentId = jdbcTemplate.queryForObject("SELECT student_id FROM students WHERE user_id = ?", Integer.class, userId);
            jdbcTemplate.update("INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, date, description) VALUES (?, ?, ?, ?, CURRENT_DATE, ?)",
                    studentId, subjectId, teacherId, gradeValue, "Initial grade");
            System.out.println("Added student " + username + " with grade " + gradeValue);
        }
    }
}
