package com.egradebook.backend.model;

public class Grade {
    private int student_id;
    private int subject_id;
    private int teacher_id;
    private String date;
    private float grade_value;
    private String description;

    public Grade(int student_id, int subject_id, int teacher_id, String date, int grade_value, String description) {
        this.student_id = student_id;
        this.subject_id = subject_id;
        this.teacher_id = teacher_id;
        this.date = date;
        this.grade_value = grade_value;
        this.description = description;
    }
    public int getStudent_id() { return student_id; }
    public int getSubject_id() { return subject_id; }
    public int getTeacher_id() { return teacher_id; }
    public String getDate() { return date; }
    public float getGrade_value() { return grade_value; }
    public String getDescription() { return description; }

    public void setStudent_id(int student_id) { this.student_id = student_id; }
    public void setSubject_id(int subject_id) { this.subject_id = subject_id; }
    public void setTeacher_id(int teacher_id) { this.teacher_id = teacher_id; }
    public void setDate(String date) { this.date = date; }
    public void setGrade_value(float grade_value) { this.grade_value = grade_value; }
    public void setDescription(String description) { this.description = description; }
}
