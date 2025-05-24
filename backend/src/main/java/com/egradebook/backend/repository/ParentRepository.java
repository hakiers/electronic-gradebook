package com.egradebook.backend.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ParentRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int getParentId(int user_id) {
        String sql = "SELECT parent_id FROM parents WHERE user_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{user_id}, Integer.class);
    }
}
