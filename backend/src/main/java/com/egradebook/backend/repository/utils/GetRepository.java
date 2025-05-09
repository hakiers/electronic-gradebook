package com.egradebook.backend.repository.utils;

import com.egradebook.backend.model.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GetRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int getUserId(String username) {
        String sql = "SELECT user_id FROM users WHERE username = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{username}, Integer.class);
    }

    public int getTeacherId(String username){
        String sql = "SELECT teacher_id FROM teachers t JOIN users u " +
                "ON u.user_id = t.user_id WHERE u.username = ? ";
        return jdbcTemplate.queryForObject(sql, new Object[]{username}, Integer.class);
    }

    public int getSubjectId(String subject){
        String sql = "SELECT subject_id FROM subjects WHERE subject = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{subject}, Integer.class);
    }

    public String getSubjectName(int subject_id){
        String sql = "SELECT subject FROM subjects WHERE subject_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{subject_id}, String.class);
    }

    public int getStudentId(String username){
        String sql = "SELECT student_id FROM students WHERE username = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{username}, Integer.class);
    }
}
