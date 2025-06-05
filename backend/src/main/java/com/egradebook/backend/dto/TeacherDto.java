package com.egradebook.backend.dto;

import com.egradebook.backend.model.Subject;
import com.egradebook.backend.model.Teacher;

public class TeacherDto {
    private int teacher_id;
    private String name;
    private String surname;
    private String pesel;
    private String username;

    public TeacherDto(Teacher teacher) {
        this.name = teacher.getName();
        this.surname = teacher.getSurname();
        this.pesel = teacher.getPesel();
        this.teacher_id = teacher.getTeacher_id();
        this.username = teacher.getUsername();
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

    public String getPesel() {
        return pesel;
    }

    public String getUsername() { return username; }
}
