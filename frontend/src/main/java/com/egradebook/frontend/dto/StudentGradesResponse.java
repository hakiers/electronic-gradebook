package com.egradebook.frontend.dto;


import com.egradebook.frontend.model.Grade;
import java.util.List;
import java.util.Map;

public class StudentGradesResponse {
    public Map<String, List<Grade>> gradesBySubject;
    private String error;

    public StudentGradesResponse() {}

    public StudentGradesResponse(Map<String, List<Grade>> gradesBySubject) {
        this.gradesBySubject = gradesBySubject;
    }

    public StudentGradesResponse(String error) {
        this.error = error;
    }

    public Map<String, List<Grade>> getGradesBySubject() {
        return gradesBySubject;
    }

    public String getError() {
        return error;
    }
}