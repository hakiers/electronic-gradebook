package com.egradebook.backend.model;

public class Subject {
    private int subject_id;
    private String name;
    public Subject(int subject_id, String name) {
        this.name = name;
        this.subject_id = subject_id;
    }
    public String getName() { return name; }
    public int getSubject_id() { return subject_id; }

    public void setName(String name) { this.name = name; }
}
