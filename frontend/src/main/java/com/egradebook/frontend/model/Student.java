package com.egradebook.frontend.model;

public class Student {
    private int student_id;
    private String name;
    private String surname;
    private String pesel;
    private int class_id;
    public Student()
    {

    }

    public Student(int student_id, String name, String surname, String pesel, int class_id) {
        this.student_id = student_id;
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.class_id = class_id;
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
    public String getFullName() {
        return name + " " + surname;
    }
    @Override
    public String toString() {
        return getFullName();
    }
}
