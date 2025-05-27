package com.egradebook.backend.repository;

import com.egradebook.backend.dto.Attendance;
import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StudentRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    UserRepository userRepository;

    public int getStudentId(int user_id) {
        String sql = "SELECT student_id FROM students WHERE user_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{user_id}, Integer.class);
    }

    public List<Grade> getStudentsGrades(int subject_id, int student_id) {
        String sql = "SELECT * FROM grades WHERE subject_id = ? AND student_id = ?";
        List<Grade> grades = jdbcTemplate.query(sql, new Object[]{subject_id, student_id}, (rs, rowNum) ->
                new Grade(
                        rs.getInt("grade_id"),
                        rs.getInt("student_id"),
                        rs.getInt("subject_id"),
                        rs.getInt("teacher_id"),
                        rs.getString("date"),
                        rs.getFloat("grade_value"),
                        rs.getString("description")
                )
        );

        return grades;
    }

    public List<Subject> getStudentsSubjects(int student_id) {
        String sql = """
        SELECT DISTINCT subjects.subject_id, subjects.name 
                FROM students JOIN class_schedule ON students.class_id = class_schedule.class_id 
                JOIN subjects ON class_schedule.subject_id = subjects.subject_id
                WHERE students.student_id = ?;
                """;
        List<Subject> subjects = jdbcTemplate.query(sql, new Object[]{student_id}, (rs, rowNum) ->
                new Subject(
                        rs.getInt("subject_id"),
                        rs.getString("name")
                )
        );
        return subjects;
    }

    public boolean isStudentInClass(int student_id, int class_id) {
        String sql = "SELECT COUNT(*) FROM students WHERE student_id = ? AND class_id = ?";
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, student_id, class_id);
        return count != null && count > 0;
    }

    public void saveStudent(Student student) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, student.getUsername(), student.getPassword(), "student");

        int user_id = userRepository.getUserId(student.getUsername());
        sql = "INSERT INTO students (user_id, class_id) VALUES (?, ?)";
        jdbcTemplate.update(sql, user_id, student.getClass_id());

        sql = "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, user_id, student.getName(), student.getSurname(), student.getPesel());
    }

    public Student getStudent(int student_id) {
        //to do
        return new Student();
    }

    public List<Attendance> getStudentsAttendanceByDate(int student_id, String date) {
        String sql = """
                SELECT * FROM attendance WHERE student_id = ? AND date = ? ORDER BY date;
                """;
        List<Attendance> attendance = jdbcTemplate.query(sql, new Object[]{student_id, date}, (rs, rowNum) ->
                    new Attendance(
                            rs.getInt("student_id"),
                            rs.getInt("attendance_id"),
                            rs.getInt("schedule_id"),
                            rs.getString("status"),
                            rs.getString("date")
                    )
                );
        return null;
    }

    //to do: w funkcji getAllStudentsAbsences zmienic zapytanie tak zeby bralo dane z widoku attendance w aktualnym
    //roku szkolnym

    public List<Attendance> getAllStudentsAbsences(int student_id) {
        String sql = """
                SELECT * FROM attendance WHERE student_id = ? AND status IN('excused absence','absence')
                ORDER BY date;
                """;
        List<Attendance> attendance = jdbcTemplate.query(sql, new Object[]{student_id}, (rs, rowNum) ->
                new Attendance(
                        rs.getInt("student_id"),
                        rs.getInt("attendance_id"),
                        rs.getInt("schedule_id"),
                        rs.getString("status"),
                        rs.getString("date")
                )
        );
        return attendance;
    }




}
