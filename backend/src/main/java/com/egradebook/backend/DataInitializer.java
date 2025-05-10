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

        // 1️⃣ ADMIN
        addUser("admin", encoder.encode("admin123"), "admin");

        // 2️⃣ TEACHERS
        addUser("teacher1", encoder.encode("teacher123"), "teacher");
        addUser("teacher2", encoder.encode("teacher123"), "teacher");

        Integer teacher1UserId = getUserId("teacher1");
        Integer teacher2UserId = getUserId("teacher2");

        addTeacher(teacher1UserId);
        addTeacher(teacher2UserId);

        Integer teacher1Id = getTeacherId("teacher1");
        Integer teacher2Id = getTeacherId("teacher2");

        // 3️⃣ SUBJECTS
        addSubject("Matematyka");
        addSubject("Informatyka");

        Integer mathId = getSubjectId("Matematyka");
        Integer infoId = getSubjectId("Informatyka");

        // 4️⃣ CLASSES
        addClass("1A", teacher1Id);
        addClass("1B", teacher2Id);

        Integer class1AId = getClassId("1A");
        Integer class1BId = getClassId("1B");

        // 5️⃣ TEACHER_CLASS_SUBJECT
        addTeacherClassSubject(teacher1Id, class1AId, mathId);
        addTeacherClassSubject(teacher2Id, class1BId, infoId);

        // 6️⃣ TEACHER_SUBJECT (ogólne przypisanie nauczyciela do przedmiotu)
        addTeacherSubject(teacher1Id, mathId);
        addTeacherSubject(teacher2Id, infoId);

        // 7️⃣ STUDENTS (z powiązaniami)
        addStudentFull("student1A1", "student123", class1AId, teacher1Id, mathId, 4.5f);
        addStudentFull("student1A2", "student123", class1AId, teacher1Id, mathId, 5.0f);
        addStudentFull("student1B1", "student123", class1BId, teacher2Id, infoId, 3.5f);
        addStudentFull("student1B2", "student123", class1BId, teacher2Id, infoId, 4.0f);

        System.out.println("✅ Database initialized!");
    }

    private void addUser(String username, String password, String role) {
        if (!exists("SELECT COUNT(*) FROM users WHERE username = ?", username)) {
            jdbcTemplate.update("INSERT INTO users (username, password, role) VALUES (?, ?, ?)", username, password, role);
            Integer userId = getUserId(username);

            // add contact_info
            jdbcTemplate.update("""
                INSERT INTO contact_info (user_id, phone_number, email, address)
                VALUES (?, ?, ?, ?)
                """, userId, generatePhone(), username + "@mail.com", "ul. Przykładowa 1");

            // add personal_data
            jdbcTemplate.update("""
                INSERT INTO personal_data (user_id, name, surname, pesel)
                VALUES (?, ?, ?, ?)
                """, userId, capitalize(username), "Kowalski", generatePesel(username));
        }
    }

    private void addTeacher(Integer userId) {
        if (!exists("SELECT COUNT(*) FROM teachers WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO teachers (user_id) VALUES (?)", userId);
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
        if (!exists("""
                SELECT COUNT(*) FROM teacher_class_subject
                WHERE teacher_id = ? AND class_id = ? AND subject_id = ?
                """, teacherId, classId, subjectId)) {
            jdbcTemplate.update("""
                INSERT INTO teacher_class_subject (teacher_id, class_id, subject_id)
                VALUES (?, ?, ?)
                """, teacherId, classId, subjectId);
        }
    }

    private void addTeacherSubject(Integer teacherId, Integer subjectId) {
        if (!exists("""
                SELECT COUNT(*) FROM teacher_subject
                WHERE teacher_id = ? AND subject_id = ?
                """, teacherId, subjectId)) {
            jdbcTemplate.update("""
                INSERT INTO teacher_subject (teacher_id, subject_id)
                VALUES (?, ?)
                """, teacherId, subjectId);
        }
    }

    private void addStudentFull(String username, String password, Integer classId, Integer teacherId, Integer subjectId, float gradeValue) {
        addUser(username, new BCryptPasswordEncoder().encode(password), "student");
        Integer userId = getUserId(username);

        if (!exists("SELECT COUNT(*) FROM students WHERE user_id = ?", userId)) {
            jdbcTemplate.update("INSERT INTO students (user_id, class_id) VALUES (?, ?)", userId, classId);
        }

        Integer studentId = jdbcTemplate.queryForObject("SELECT student_id FROM students WHERE user_id = ?", Integer.class, userId);

        // Grade
        jdbcTemplate.update("""
            INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, date, description)
            VALUES (?, ?, ?, ?, CURRENT_DATE, ?)
            """, studentId, subjectId, teacherId, gradeValue, "Pierwsza ocena");

        // Attendance
        jdbcTemplate.update("""
            INSERT INTO attendance (student_id, schedule_id, date, status)
            VALUES (?, NULL, CURRENT_DATE, 'present')
            """, studentId);

        // Event
        if (!exists("SELECT COUNT(*) FROM events WHERE class_id = ?", classId)) {
            jdbcTemplate.update("""
                INSERT INTO events (title, description, date, class_id)
                VALUES ('Dzień Sportu', 'Zawody sportowe w szkole', CURRENT_DATE, ?)
                """, classId);
        }
    }

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

    private boolean exists(String sql, Object... params) {
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, params);
        return count != null && count > 0;
    }

    private String generatePhone() {
        return "5" + (int)(Math.random() * 1_000_0000 + 100_0000);
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
