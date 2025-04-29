package com.egradebook.backend.dto;

public class StudentRegistrationRequest {
    private final String name;
    private final String surname;
    private final String pesel;
    private final String class_id;

    public StudentRegistrationRequest(String name, String surname, String pesel, String classId) {
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        class_id = classId;
    }

    public String getName() { return name; }
    public String getSurname() { return surname; }
    public String getPesel() { return pesel; }
    public String getClassId() { return class_id; }
}
