package com.egradebook.frontend.model;

public class Student {
    private int id;
    private final String firstName;
    private final String lastName;

    // konstruktory, gettery, settery
    public String getFullName() {
        return firstName + " " + lastName;
    }
    public Student(int id, String firstName, String lastName) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
    }

    public int getId() {
        return id;
    }
}