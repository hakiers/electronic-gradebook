package com.egradebook.backend.repository.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UtilsRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int MaxIdByNameAndSurname(String name, String surname){
        String sql = "SELECT MAX(u.user_id) FROM users u JOIN personal_data p ON u.user_id = p.user_id" +
                " WHERE p.name = ? AND p.surname = ?";
        Integer res =  jdbcTemplate.queryForObject(sql, new Object[]{name, surname}, Integer.class);
        if(res == null){
            return 1;
        }
        return res.intValue()+1;
    }
}
