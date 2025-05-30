package com.egradebook.backend.request;

import com.egradebook.backend.model.Group;

import java.util.List;

public class AssignStudentToGroupsRequest {
    private int student_id;
    private List<Group> groups;

    public AssignStudentToGroupsRequest(int student_id, List<Group> groups) {
        this.student_id = student_id;
        this.groups = groups;
    }

    public int getStudent_id() { return student_id; }
    public List<Group> getGroups() { return groups; }
}
