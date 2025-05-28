package com.egradebook.frontend.dto;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Subject;

import java.util.List;
import java.util.stream.Collectors;

public class SubjectWithGrades {
    private final Subject subject;
    private final String grades;

    public SubjectWithGrades(Subject subject, List<Grade> gradesList) {
        this.subject = subject;
        this.grades = gradesList.stream()
                .map(grade -> String.valueOf(grade.getGrade_value()))
                .collect(Collectors.joining(", "));
    }

    public Subject getSubject() {
        return subject;
    }

    public String getGrades() {
        return grades;
    }
}