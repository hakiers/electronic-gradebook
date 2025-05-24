package com.egradebook.backend.request;

import java.util.List;

public class TeacherRegistrationRequest {
    private final String name;
    private final String surname;
    private final String pesel;
    private final List<String> subjects;


    public TeacherRegistrationRequest(String name, String surname, String pesel, List<String> subjects) {
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.subjects = subjects;
    }

    public String getName() { return name; }
    public String getSurname() { return surname; }
    public String getPesel() { return pesel; }
    public List<String> getSubjects() { return subjects; }
}
