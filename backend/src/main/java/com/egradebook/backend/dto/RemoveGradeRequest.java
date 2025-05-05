package com.egradebook.backend.dto;

public class RemoveGradeRequest {
    private final int grade_id;

    public RemoveGradeRequest(int grade_id) {
        this.grade_id = grade_id;
    }

    public int getGrade_id() { return grade_id; }
}
