package com.egradebook.backend.repository;

import com.egradebook.backend.dto.EditGradeRequest;
import com.egradebook.backend.model.Clazz;
import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Subject;
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

    public boolean canTeacherGradeStudent(int teacher_id, int student_id, int subject_id) {
        String sql = """
            SELECT COUNT(*) FROM teacher_class_subject tcs
            JOIN students s ON tcs.class_id = s.class_id
            WHERE tcs.teacher_id = ? AND tcs.subject_id = ? AND s.student_id = ?
        """;

        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, teacher_id, subject_id, student_id);
        return count != null && count > 0;
    }

    public boolean doesTeacherTeachClass(int teacher_id, int class_id){
        String sql = """
                  SELECT COUNT(*) FROM teacher_class_subject tcs WHERE tcs.teacher_id = ?
                  AND tcs.class_id = ?
                """;
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, teacher_id, class_id);
        return count != null && count > 0;
    }

    public int getGradeTeacherId(int grade_id) {
        String sql = "SELECT teacher_id FROM grades WHERE grade_id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, Integer.class, grade_id);
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

    public boolean updateGrade(EditGradeRequest request, int teacher_id){
        String sql = """
        UPDATE grades
        SET grade_value = ?, description = ?, date = CURRENT_DATE
        WHERE grade_id = ? AND teacher_id = ?
        """;

        int updated = jdbcTemplate.update(sql,
                request.getGrade_value(),
                request.getDescription(),
                request.getGrade_id(),
                teacher_id
        );

        return updated > 0;
    }

    public boolean deleteGrade(int grade_id, int teacher_id){
        String sql = """
        DELETE FROM grades
        WHERE grade_id = ? AND teacher_id = ?
        """;

        int deleted = jdbcTemplate.update(sql, grade_id, teacher_id);

        return deleted > 0;
    }

    public List<Subject> getTeacherSubjects(int teacher_id) {
        String sql = """
                SELECT DISTINCT subjects.subject_id, subjects.name 
                FROM teacher_subject JOIN subjects ON teacher_subject.subject_id = subjects.subject_id
                WHERE teacher_subject.teacher_id = ?;
                """;
        List<Subject> subjects = jdbcTemplate.query(sql, new Object[]{teacher_id}, (rs, rowNum) ->
                new Subject(
                        rs.getInt("subject_id"),
                        rs.getString("name")
                )
        );
        return subjects;
    }

    public List<Clazz> getTeacherClassesForSubject(int teacher_id, int subject_id){
        String sql = "SELECT class_id, name, class_teacher FROM classes JOIN teacher_class_subject ON classes.class_id = teacher_class_subject.class_id WHERE teacher_id = ? AND subject_id = ?";
        List <Clazz> clazzes = jdbcTemplate.query(sql, new Object[]{teacher_id, subject_id}, (rs, rowNum) ->
                new Clazz(
                        rs.getInt("class_id"),
                        rs.getString("name"),
                        rs.getInt("class_teacher"),
                        null
                )
        );
        return clazzes;
    }
}
