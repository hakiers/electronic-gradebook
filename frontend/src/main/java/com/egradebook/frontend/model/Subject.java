package com.egradebook.frontend.model;

public class Subject {
    private int subject_id;
    private String name;

    public Subject(int subject_id, String name) {
        this.name = name;
        this.subject_id = subject_id;
    }
    @Override
    public String toString() {
        return name;
    }
    public String getName() {
        return name;
    }
    public int getSubject_id() {
        return subject_id;
    }

}
