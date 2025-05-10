package com.egradebook.backend.model;

import java.util.List;

public class Teacher {
    private Long teacher_id;
    private String name;
    private String surname;
    private String pesel;
    private List<String> subjects;
    private String username;
    private String password;

    public Teacher(){};
    public Teacher(Long teacher_id, String name, String surname, String pesel, List<String> subjects, String username, String password) {
        this.teacher_id = teacher_id;
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.subjects = subjects;
        this.username = username;
        this.password = password;
    }

    public Long getTeacher_id() { return teacher_id; }
    public String getName() { return name; }
    public String getSurname() { return surname; }
    public String getPesel() { return pesel; }
    public List<String> getSubjects() { return subjects; }
    public String getUsername() { return username; }
    public String getPassword() { return password; }

    public void setTeacher_id(Long teacher_id) { this.teacher_id = teacher_id; }
    public void setName(String name) { this.name = name; }
    public void setSurname(String surname) { this.surname = surname; }
    public void setPesel(String pesel) { this.pesel = pesel; }
    public void setSubjects(List<String> subjects) { this.subjects = subjects; }
    public void setUsername(String username) { this.username = username; }
    public void setPassword(String password) { this.password = password; }

}
