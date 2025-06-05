package com.egradebook.backend.repository;

import com.egradebook.backend.dto.StudentDto;
import com.egradebook.backend.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ParentRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int getParentId(int user_id) {
        String sql = "SELECT parent_id FROM parents WHERE user_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{user_id}, Integer.class);
    }
    public List<StudentDto> getAllChildren(int parent_id) {
        String sql = """
    SELECT s.student_id, p.name, p.surname, p.pesel,s.class_id 
    FROM parent_student natural join students s natural join personal_data p WHERE parent_id = ?;
    """;
        List<StudentDto> students = jdbcTemplate.query(sql, new Object[]{parent_id}, (rs, rowNum) ->
                new StudentDto(
                        new Student(
                                rs.getInt("student_id"),
                                rs.getString("name"),
                                rs.getString("surname"),
                                rs.getString("pesel"),
                                rs.getInt("class_id"),
                                null,
                                null
                        )

                )
        );
        return students;

    }
}
