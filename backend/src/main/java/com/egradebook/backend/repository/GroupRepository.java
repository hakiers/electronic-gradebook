package com.egradebook.backend.repository;

import com.egradebook.backend.model.Group;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class GroupRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public Group getGroup(int group_id){
        String sql = "SELECT group_id, group_number FROM subject_groups WHERE group_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{group_id}, (rs, rowNum) -> new Group(rs.getInt("group_id"), rs.getInt("group_number")));
    }
}
