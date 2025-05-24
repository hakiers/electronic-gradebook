package com.egradebook.backend.dto;

public class StudentProfile {
    private String name;
    private String surname;
    private String class_name;
    private String group_name;

    public StudentProfile() {};

    public StudentProfile(String name, String surname, String class_name, String group_name) {
        this.name = name;
        this.surname = surname;
        this.class_name = class_name;
        this.group_name = group_name;
    }

    public String getName() { return name; }
    public String getSurname() { return surname; }
    public String getClass_name() { return class_name; }
    public String getGroup_name() { return group_name; }

    public void setName(String name) { this.name = name; }
    public void setSurname(String surname) { this.surname = surname; }
    public void setClass_name(String class_name) { this.class_name = class_name; }
    public void setGroup_name(String group_name) { this.group_name = group_name; }

}
