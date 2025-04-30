package com.egradebook.backend.repository.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CountRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int countByNameAndSurname(String name, String surname){
        String sql = "SELECT COUNT(*) FROM users u JOIN personal_data p ON u.user_id = p.user_id" +
                " WHERE p.name = ? AND p.surname = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{name, surname}, Integer.class);
    }
}
