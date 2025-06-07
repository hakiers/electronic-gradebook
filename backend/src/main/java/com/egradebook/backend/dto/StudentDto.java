package com.egradebook.backend.dto;

import com.egradebook.backend.model.Student;

public class StudentDto {
    private int student_id;
    private String name;
    private String surname;
    private String pesel;
    private int class_id;
    private String username;
    public StudentDto() {
        // Domyślny konstruktor wymagany przez Spring
    }
    public StudentDto(Student student) {
        this.student_id = student.getStudent_id();
        this.name = student.getName();
        this.surname = student.getSurname();
        this.pesel = student.getPesel();
        this.class_id = student.getClass_id();
        this.username = student.getUsername();
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public String getPesel() {
        return pesel;
    }

    public int getClass_id() {
        return class_id;
    }

    public String getUsername() { return username; }
}
