package com.egradebook.backend.repository;

import com.egradebook.backend.dto.UserContactData;
import com.egradebook.backend.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class UserRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;


    public int getUserId(String username) {
        String sql = "SELECT user_id FROM users WHERE username = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{username}, Integer.class);
    }

    public User findUserById(int user_id) {
        String sql = "SELECT user_id, username, password, role FROM users WHERE user_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{user_id}, (rs, rowNum) ->
                new User(
                        rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("role")
                )
        );
    }

    public User findUserByUsername(String username) {
        String sql = "SELECT user_id, username, password, role FROM users WHERE username = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{username}, (rs, rowNum) ->
                new User(
                        rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("role")
                )
        );
    }

    public boolean existUserByPesel(String pesel) {
        String sql = "SELECT u.user_id, u.username, u.password, u.role FROM users u JOIN personal_data p ON u.user_id = p.user_id WHERE p.pesel = ?";
        Integer count = jdbcTemplate.queryForObject(sql, new Object[]{pesel}, Integer.class);
        return count != null && count > 0;
    }

    public User findUserByPesel(String pesel){
        String sql = "SELECT u.user_id, u.username, u.password, u.role FROM users u JOIN personal_data p ON u.user_id = p.user_id WHERE p.pesel = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{pesel}, (rs, rowNum) ->
                new User(
                        rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("role")
                )

        );
    }

    public User findUserByPeselAndRole(String pesel, String role){
        String sql = """
                SELECT u.user_id, u.username, u.password, u.role 
                FROM users u JOIN personal_data p ON u.user_id = p.user_id 
                WHERE p.pesel = ? AND u.role = ?
                """;

        return jdbcTemplate.queryForObject(sql, new Object[]{pesel, role}, (rs, rowNum) ->
                new User(
                        rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("role")
                )

        );
    }

    public boolean existUserByPeselAndRole(String pesel, String role){
        String sql = """
                SELECT u.user_id, u.username, u.password, u.role 
                FROM users u JOIN personal_data p ON u.user_id = p.user_id 
                WHERE p.pesel = ? AND u.role = ?
                """;
        Integer count = jdbcTemplate.queryForObject(sql, new Object[]{pesel, role}, Integer.class);
        return count != null && count > 0;
    }

    public User saveUser(User user) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getRole());
        return user;
    }

    public void changePassword(String username, String newPassword){
        String sql = "UPDATE users SET password = ? WHERE username = ?";
        jdbcTemplate.update(sql, newPassword, username);
    }

    public UserContactData getUserContactData(int user_id){
        String sql = "SELECT phone_number, email, adress FROM contact_info WHERE user_id = ?";

        return (UserContactData) jdbcTemplate.query(sql, new Object[]{user_id}, (rs, rowNum) ->
                new UserContactData(
                        rs.getString("phone_number"),
                        rs.getString("email"),
                        rs.getString("adress")
                )
        );
    }
}
