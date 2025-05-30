package com.egradebook.frontend.dto;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Subject;

import java.util.List;

public class SubjectWithGrades {
    private Subject subject;
    private List<Grade> grades;

    public SubjectWithGrades() {}

    public SubjectWithGrades(Subject subject, List<Grade> gradesList) {
        this.subject = subject;
        this.grades = gradesList;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public List<Grade> getGrades() {
        return grades;
    }

    public void setGrades(List<Grade> grades) {
        this.grades = grades;
    }
}
