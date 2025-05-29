package com.egradebook.frontend.model;



import com.egradebook.frontend.service.TeacherService;

import java.util.ArrayList;
import java.util.List;

public class Clazz {
    private int class_id;
    private String name;
    private String short_name;
    private String class_year;
    private int class_teacher;
    private List<Student> students = new ArrayList<>();
    private List<Lesson> scheulde = new ArrayList<>();

    public Clazz() {};

    public Clazz(int class_id, String name, String short_name, String class_year, int classTeacher) {
        this.class_id = class_id;
        this.name = name;
        this.short_name = short_name;
        this.class_year = class_year;
        this.class_teacher = classTeacher;
        students = TeacherService.getStudentInClass(class_id).getValue();
        List<Lesson> schedule = TeacherService.getScheduleForClass(class_id);
    }

    public int getClass_id() {
        return class_id;
    }

    public String getName() {
        return name;
    }

    public String getShort_name() {
        return short_name;
    }

    public String getClass_year() {
        return class_year;
    }

    public int getClass_teacher() {
        return class_teacher;
    }


    public List<Student> getStudents() {
        return students;
    }


    public List<Lesson> getScheulde() {
        return scheulde;
    }
    @Override
    public String toString() {
        return name;
    }
}

