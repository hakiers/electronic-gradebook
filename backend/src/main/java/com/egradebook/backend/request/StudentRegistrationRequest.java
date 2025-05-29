package com.egradebook.backend.request;

public class StudentRegistrationRequest {
    private final String name;
    private final String surname;
    private final String pesel;
    private final Integer class_id;

    public StudentRegistrationRequest(String name, String surname, String pesel, Integer class_id) {
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.class_id = class_id;
    }

    public String getName() { return name; }
    public String getSurname() { return surname; }
    public String getPesel() { return pesel; }
    public Integer getClassId() { return class_id; }
}
