package com.egradebook.frontend.dto;

public class EditGradeRequest {
    private final int grade_id;
    private final float grade_value;
    private final String description;

    public EditGradeRequest(int grade_id, float grade_value, String description) {
        this.grade_id = grade_id;
        this.grade_value = grade_value;
        this.description = description;
    }

    public int getGrade_id() { return grade_id; }
    public float getGrade_value() { return grade_value; }
    public String getDescription() { return description; }
}
