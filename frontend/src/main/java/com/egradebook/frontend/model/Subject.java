package com.egradebook.frontend.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Subject {
    @JsonProperty("subject_id")
    private int subjectId;

    @JsonProperty("name")
    private String name;

    // Konstruktor bezargumentowy wymagany przez Jacksona
    public Subject() {}

    public Subject(int subjectId, String name) {
        this.subjectId = subjectId;
        this.name = name;
    }

    // Gettery i settery
    public int getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(int subjectId) {
        this.subjectId = subjectId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }
}