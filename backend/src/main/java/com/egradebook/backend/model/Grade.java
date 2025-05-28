package com.egradebook.backend.model;

import com.egradebook.backend.request.AddGradeRequest;

public class Grade {
    private int grade_id;
    private int student_id;
    private int subject_id;
    private int teacher_id;
    private String date;
    private float grade_value;
    private String description;

    public Grade(int garde_id, int student_id, int subject_id, int teacher_id, String date, float grade_value, String description) {
        this.grade_id = garde_id;
        this.student_id = student_id;
        this.subject_id = subject_id;
        this.teacher_id = teacher_id;
        this.date = date;
        this.grade_value = grade_value;
        this.description = description;
    }

    public Grade(AddGradeRequest addGradeRequest) {
        grade_id = 0;
        student_id = addGradeRequest.getStudent_id();
        subject_id = addGradeRequest.getSubject_id();
        teacher_id = 0;
        date = addGradeRequest.getDate();
        grade_value = addGradeRequest.getGrade_value();
        description = addGradeRequest.getDescription();
    }

    public int getGrade_id() {
        return grade_id;
    }

    public int getStudent_id() {
        return student_id;
    }

    public int getSubject_id() {
        return subject_id;
    }

    public int getTeacher_id() {
        return teacher_id;
    }

    public String getDate() {
        return date;
    }

    public float getGrade_value() {
        return grade_value;
    }

    public String getDescription() {
        return description;
    }

    public void setTeacher_id(int teacher_id) {
        this.teacher_id = teacher_id;
    }

}