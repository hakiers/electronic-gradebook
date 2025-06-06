package com.egradebook.frontend.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Subject {
    private int subject_id;

    @JsonProperty("name")
    private String name;

    public Subject() {}

    public Subject(int subject_id, String name) {
        this.subject_id = subject_id;
        this.name = name;
    }

    public int getSubject_id() {
        return subject_id;
    }

    public void setSubject_id(int subject_id) {
        this.subject_id = subject_id;
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