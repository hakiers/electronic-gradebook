package com.egradebook.frontend.dto;

public class EditUserPersonalDataRequest {
    private String name;
    private String surname;

    public EditUserPersonalDataRequest(String name, String surname) {
        this.name = name;
        this.surname = surname;
    }

    public String getName() { return name; }
    public String getSurname() { return surname; }
}
