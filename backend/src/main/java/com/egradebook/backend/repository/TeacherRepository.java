package com.egradebook.backend.repository;

import com.egradebook.backend.dto.EditGradeRequest;
import com.egradebook.backend.model.Grade;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeacherRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Integer> getTeacherSubjectsWithId(int teacher_id){
        String sql = "SELECT subject_id FROM teacher_subject WHERE teacher_id = ?";
        return jdbcTemplate.queryForList(sql, Integer.class, teacher_id);
    }

    public boolean canTeacherGradeStudent(int teacherId, int studentId, int subjectId) {
        String sql = """
            SELECT COUNT(*) FROM teacher_class_subject tcs
            JOIN students s ON tcs.class_id = s.class_id
            WHERE tcs.teacher_id = ? AND tcs.subject_id = ? AND s.student_id = ?
        """;

        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, teacherId, subjectId, studentId);
        return count != null && count > 0;
    }

    public int getGradeTeacherId(int gradeId) {
        String sql = "SELECT teacher_id FROM grades WHERE grade_id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, Integer.class, gradeId);
        } catch (EmptyResultDataAccessException e) {
            return -1;
        }
    }

    public void insertGrade(Grade grade) {
        String sql = """
            INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, date, description)
            VALUES (?, ?, ?, ?, CURRENT_DATE, ?)
        """;
        jdbcTemplate.update(sql, grade.getStudent_id(), grade.getSubject_id(), grade.getTeacher_id(), grade.getGrade_value(), grade.getDescription());
    }

    public boolean updateGrade(EditGradeRequest request, int teacherId){
        String sql = """
        UPDATE grades
        SET grade_value = ?, description = ?, date = CURRENT_DATE
        WHERE grade_id = ? AND teacher_id = ?
        """;

        int updated = jdbcTemplate.update(sql,
                request.getGrade_value(),
                request.getDescription(),
                request.getGrade_id(),
                teacherId
        );

        return updated > 0;
    }

    public boolean deleteGrade(int gradeId, int teacherId){
        String sql = """
        DELETE FROM grades
        WHERE grade_id = ? AND teacher_id = ?
        """;

        int deleted = jdbcTemplate.update(sql, gradeId, teacherId);

        return deleted > 0;
    }
}
