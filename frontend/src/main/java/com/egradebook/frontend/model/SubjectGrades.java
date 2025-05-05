package com.egradebook.frontend.model;

import java.util.List;
import java.util.stream.Collectors;

public class SubjectGrades {
    private final String subject;
    private final String grades;

    public SubjectGrades(String subject, List<Grade> gradesList) {
        this.subject = subject;
        this.grades = gradesList.stream()
                .map(grade -> String.valueOf(grade.getGrade_value()))
                .collect(Collectors.joining(", "));
    }

    public String getSubject() {
        return subject;
    }

    public String getGrades() {
        return grades;
    }
}