package com.egradebook.frontend.model;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;

import java.util.List;

public class StudentGrades {
    private final String studentName;
    private final ObservableList<Grade> grades;
    private transient String newGradeValue; // Przechowujemy wartość, nie TextField

    public StudentGrades(String studentName, List<Grade> grades) {
        this.studentName = studentName;
        this.grades = FXCollections.observableArrayList(grades);
        this.newGradeValue = "";
    }

    // Gettery i settery
    public String getStudentName() { return studentName; }
    public ObservableList<Grade> getGrades() { return grades; }
    public String getNewGradeValue() { return newGradeValue; }
    public void setNewGradeValue(String value) { this.newGradeValue = value; }

    public void addGrade(Grade grade) {
        grades.add(grade);
        this.newGradeValue = ""; // Czyścimy po dodaniu
    }
}