package com.egradebook.backend.repository.utils;

import com.egradebook.backend.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class FindRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public User findUserByUsername(String username) {
        String sql = "SELECT user_id, username, password, role FROM users WHERE username = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{username}, (rs, rowNum) ->
                    new User(
                            rs.getLong("user_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("role")
                    )
            );
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public User findUserByPesel(String pesel){
        String sql = "SELECT user_id, username, password, role FROM users WHERE pesel = ?";
        try{
            return jdbcTemplate.queryForObject(sql, new Object[]{pesel}, (rs, rowNum) ->
                    new User(
                            rs.getLong("user_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("role")
                    )

            );
        } catch(EmptyResultDataAccessException e){
            return null;
        }
    }
}
