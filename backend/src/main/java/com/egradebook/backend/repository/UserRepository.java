package com.egradebook.backend.repository;

import com.egradebook.backend.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserRepository {

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
        //to do
        return null;
    }

    public int countByNameAndSurname(String name, String surname){
        //to do
        String sql = "SELECT COUNT(*) FROM users WHERE username = ? AND surname = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{name, surname}, Integer.class);
    }

    public User saveUser(User user) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getRole());
        return user;
    }



}
