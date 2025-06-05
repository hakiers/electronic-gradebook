package com.egradebook.frontend.model;

import com.egradebook.frontend.utils.Triple;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.ArrayList;
import java.util.List;

public class Teacher {
    private int teacher_id;
    private String name;
    private String surname;
    private String pesel;
    private List<Subject> teachSubjects = new ArrayList<>();
    private List<Triple<Clazz, Subject, Group>> teachClassSubject = new ArrayList<>();
    private String username;
    public Teacher() {
    }

    public Teacher(int teacher_id, String name, String surname, String pesel, String username) {
        this.teacher_id = teacher_id;
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.username = username;
    }


    public int getTeacher_id() {
        return teacher_id;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getFullName() {
        return name + " " + surname;
    }

    public String getUsername(){
        return username;
    }

    public String getPesel() {
        return pesel;
    }

    @Override
    public String toString() {
        return getFullName();
    }
}

