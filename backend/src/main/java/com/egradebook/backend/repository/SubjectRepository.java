package com.egradebook.backend.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SubjectRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int getSubjectId(String name){
        String sql = "SELECT subject_id FROM subjects WHERE name = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{name}, Integer.class);
    }

    public String getSubjectName(int subject_id){
        String sql = "SELECT subject FROM subjects WHERE subject_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{subject_id}, String.class);
    }
}
