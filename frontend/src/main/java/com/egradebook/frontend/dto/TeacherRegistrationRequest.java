package com.egradebook.frontend.dto;

import com.egradebook.frontend.model.Subject;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;

public class TeacherRegistrationRequest {
    private final String name;
    private final String surname;
    private final String pesel;
    private final List<Subject> subjects;


    public TeacherRegistrationRequest(String name, String surname, String pesel, List<Subject> subjects) {
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.subjects = subjects;
    }
    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("surname")
    public String getSurname() { return surname; }
    @JsonProperty("pesel")
    public String getPesel() { return pesel; }
    @JsonProperty("subjects")
    public List<Subject> getSubjects() { return subjects; }
}
