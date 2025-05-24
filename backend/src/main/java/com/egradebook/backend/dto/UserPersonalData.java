package com.egradebook.backend.dto;

public class UserPersonalData {
    private String name;
    private String surname;
    private String pesel;

    public UserPersonalData() {};

    public UserPersonalData(String name, String surname, String pesel) {
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
    }
    public String getName() { return name; }
    public String getSurname() { return surname; }
    public String getPesel() { return pesel; }

    public void setName(String name) { this.name = name; }
    public void setSurname(String surname) { this.surname = surname; }
    public void setPesel(String pesel) { this.pesel = pesel; }
}
