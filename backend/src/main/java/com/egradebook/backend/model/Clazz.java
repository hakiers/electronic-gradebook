package com.egradebook.backend.model;

import java.util.List;

public class Clazz {
    private int class_id;
    private int class_profile;
    private int class_teacher;
    private String class_year;
    private String short_name;
    private String name;
    private List<Student> students;

    public Clazz(){}
    public Clazz(int class_id, int class_profile, int class_teacher, String class_year, String short_name, String name) {
        this.class_id = class_id;
        this.class_profile = class_profile;
        this.class_teacher = class_teacher;
        this.class_year = class_year;
        this.short_name = short_name;
        this.name = name;
    }

    public int getClass_id() { return class_id; }
    public int getClass_profile() { return class_profile; }
    public int getClass_teacher() { return class_teacher; }
    public String getClass_year() { return class_year; }
    public String getShort_name() { return short_name; }
    public String getName() { return name; }
    public List<Student> getStudents() { return students; }

    public void setClass_id(int class_id) { this.class_id = class_id; }
    public void setClass_profile(int class_profile) { this.class_profile = class_profile; }
    public void setClass_teacher(int class_teacher) { this.class_teacher = class_teacher; }
    public void setClass_year(String class_year) { this.class_year = class_year; }
    public void setShort_name(String short_name) { this.short_name = short_name; }
    public void setName(String name) { this.name = name; }
    public void setStudents(List<Student> students) { this.students = students; }
}
