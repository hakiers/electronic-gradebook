package com.egradebook.frontend.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class StudentRegistrationRequest {
    private final String name;
    private final String surname;
    private final String pesel;
    private final Integer class_id;

    public StudentRegistrationRequest(String name, String surname, String pesel, Integer classId) {
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.class_id = classId;
    }
    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("surname")
    public String getSurname() { return surname; }
    @JsonProperty("pesel")
    public String getPesel() { return pesel; }
    @JsonProperty("class_id")
    public Integer getClassId() { return class_id; }
}
