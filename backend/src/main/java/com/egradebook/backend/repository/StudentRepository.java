package com.egradebook.backend.repository;

import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Subject;
import com.egradebook.backend.repository.utils.GetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StudentRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    GetRepository getRepository;

    public List<Grade> getStudentsGrades(String subject, int student_id) {
        int subject_id = getRepository.getSubjectId(subject);
        String sql = "SELECT * FROM grades WHERE subject_id = ? AND student_id = ?";
        List<Grade> grades = jdbcTemplate.query(sql, new Object[]{subject_id, student_id}, (rs, rowNum) ->
                new Grade(
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
}
