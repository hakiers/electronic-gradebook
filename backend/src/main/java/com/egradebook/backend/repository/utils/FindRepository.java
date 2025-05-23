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

    public User findUserById(int user_id) {
        String sql = "SELECT user_id, username, password, role FROM users WHERE user_id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{user_id}, (rs, rowNum) ->
                    new User(
                            rs.getInt("user_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("role")
                    )
            );
        }
        catch (EmptyResultDataAccessException e) {
            return new User();
        }
    }

    public User findUserByUsername(String username) {
        String sql = "SELECT user_id, username, password, role FROM users WHERE username = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{username}, (rs, rowNum) ->
                    new User(
                            rs.getInt("user_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("role")
                    )
            );
        } catch (EmptyResultDataAccessException e) {
            return new User();
        }
    }

    public User findUserByPesel(String pesel){
        String sql = "SELECT u.user_id, u.username, u.password, u.role FROM users u JOIN personal_data p ON u.user_id = p.user_id WHERE p.pesel = ?";
        try{
            return jdbcTemplate.queryForObject(sql, new Object[]{pesel}, (rs, rowNum) ->
                    new User(
                            rs.getInt("user_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("role")
                    )

            );
        } catch(EmptyResultDataAccessException e){
            return new User();
        }
    }

    public User findUserByPeselAndRole(String pesel, String role){
        String sql = "SELECT u.user_id, u.username, u.password, u.role FROM users u JOIN personal_data p ON u.user_id = p.user_id WHERE p.pesel = ? AND u.role = ?";
        try{
            return jdbcTemplate.queryForObject(sql, new Object[]{pesel, role}, (rs, rowNum) ->
                    new User(
                            rs.getInt("user_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("role")
                    )

            );
        } catch(EmptyResultDataAccessException e){
            return new User();
        }
    }
}
