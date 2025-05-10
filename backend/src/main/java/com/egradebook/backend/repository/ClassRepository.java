package com.egradebook.backend.repository;

import com.egradebook.backend.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClassRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Student> getStudentsInClass(int class_id){

        String sql = """
                SELECT s.student_id, p.name, p.surname, p.pesel FROM personal_data p
                JOIN students s ON p.user_id = s.user_id WHERE s.class_id = ?
                """;

        List<Student> students = jdbcTemplate.query(sql, new Object[]{class_id}, (rs, rowNum) ->
                new Student(
                        rs.getLong("student_id"),
                        rs.getString("name"),
                        rs.getString("surname"),
                        rs.getString("pesel"),
                        class_id,
                        null,
                        null
                    )
                );
        return students;
    }
}
