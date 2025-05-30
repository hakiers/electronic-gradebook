package com.egradebook.backend.repository;

import com.egradebook.backend.dto.Attendance;
import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Subject;
import com.egradebook.backend.request.AssignStudentToGroupsRequest;
import jakarta.servlet.http.HttpSession;
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
        String sql = "SELECT s.student_id, p.name, p.surname, p.pesel, s.class_id FROM students s INNER JOIN personal_data p ON s.user_id = p.user_id WHERE s.student_id = ?";

        return jdbcTemplate.queryForObject(sql, new Object[]{student_id}, (rs, rowNum) ->
                new Student(
                        rs.getInt("student_id"),
                        rs.getString("name"),
                        rs.getString("surname"),
                        rs.getString("pesel"),
                        rs.getInt("class_id"),
                        null,
                        null
                )
        );
    }

    public List<Attendance> getStudentsAttendanceByDate(int student_id, String date) {
        String sql = """
                SELECT * FROM attendance WHERE student_id = ? AND date = ?::date ORDER BY date;
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

        return attendance;
    }

    //to do: w funkcji getAllStudentsAbsences zmienic zapytanie tak zeby bralo dane z widoku attendance w aktualnym
    //roku szkolnym

    public List<Attendance> getAllStudentsAbsences(int student_id) {
        String sql = """
                SELECT * FROM attendance WHERE student_id = ? AND status != 'presence'
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

    public List<Student> getAllStudents(){
        String sql = """
                SELECT student_id FROM students;
                """;
        return jdbcTemplate.query(sql, (rs, rowNum) ->
                getStudent(rs.getInt("student_id"))
        );
    }

    public void assignStudentToGroups(AssignStudentToGroupsRequest request) {
        String sql = "INSERT INTO student_subject_group (student_id, group_id) VALUES (?, ?)";

        for (int i = 0; i < request.getGroups().size(); i++) {
            jdbcTemplate.update(sql, request.getStudent_id(), request.getGroups().get(i).getGroup_id());
        }
    }

}
