package com.egradebook.backend.dto;

public class AddGradeRequest {
    private final int student_id;
    private final int subject_id;
    private final float grade_value;
    private final String date;
    private final String description;

    public AddGradeRequest(int student_id, int subject_id, float grade_value, String date, String description) {
        this.student_id = student_id;
        this.subject_id = subject_id;
        this.grade_value = grade_value;
        this.date = date;
        this.description = description;
    }

    public int getStudent_id() { return student_id; }
    public int getSubject_id() { return subject_id; }
    public float getGrade_value() { return grade_value; }
    public String getDate() { return date; }
    public String getDescription() { return description; }
}
