package com.egradebook.backend.repository;

import com.egradebook.backend.model.Group;
import com.egradebook.backend.model.Subject;
import com.egradebook.backend.model.Teacher;
import com.egradebook.backend.utils.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class GroupRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    SubjectRepository subjectRepository;

    public Group getGroup(int group_id){
        String sql = "SELECT group_id, group_number FROM subject_groups WHERE group_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{group_id}, (rs, rowNum) -> new Group(rs.getInt("group_id"), rs.getInt("group_number")));
    }

    public List<Pair<Subject, Group>> getAllSubjectGroups(int class_id){
        String sql = "SELECT subject_id, group_id, group_number FROM subject_groups WHERE class_id = ?";

        return jdbcTemplate.query(sql, new Object[] {class_id}, (rs, rowNum) ->
                new Pair<>(
                        subjectRepository.getSubject(rs.getInt("subject_id")),
                        new Group(rs.getInt("group_id"), rs.getInt("group_number"))
                )
        );
    }
}
