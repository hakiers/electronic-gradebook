package com.egradebook.backend.dto;

import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Subject;

import java.util.List;

public class SubjectsWithGradesDto {
    Subject subject;
    List<Grade> grades;

    public SubjectsWithGradesDto(Subject subject, List<Grade> grades) {
        this.subject = subject;
        this.grades = grades;
    }

    public Subject getSubject() {
        return subject;
    }

    public List<Grade> getGrades() {return grades;}
}
