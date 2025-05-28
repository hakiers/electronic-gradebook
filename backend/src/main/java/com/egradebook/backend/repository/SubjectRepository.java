package com.egradebook.backend.repository;

import com.egradebook.backend.model.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SubjectRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public Subject getSubject(int subject_id) {
        String sql = "SELECT subject_id, name FROM subject WHERE subject_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{subject_id}, (rs, rowNum) ->
                new Subject(
                        rs.getInt("subject_id"),
                        rs.getString("name")
                )
        );
    }

    public int getSubjectId(String name){
        String sql = "SELECT subject_id FROM subjects WHERE name = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{name}, Integer.class);
    }

    public String getSubjectName(int subject_id){
        String sql = "SELECT subject FROM subjects WHERE subject_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{subject_id}, String.class);
    }
}
