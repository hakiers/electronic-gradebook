package com.egradebook.backend.repository;

import com.egradebook.backend.model.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeacherRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Integer> getTeacherSubjectsWithId(int teacher_id){
        String sql = "SELECT subject_id FROM teacher_subject WHERE teacher_id = ?";
        return jdbcTemplate.queryForList(sql, Integer.class, teacher_id);
    }
}
