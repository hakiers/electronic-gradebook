package com.egradebook.frontend.dto;

public class AddClassRequest {
    int class_profile;
    int class_teacher;
    String class_year;

    public AddClassRequest(int class_profile, int class_teacher, String class_year) {
        this.class_profile = class_profile;
        this.class_teacher = class_teacher;
        this.class_year = class_year;
    }

    public int getClass_profile() { return class_profile; }
    public int getClass_teacher() { return class_teacher; }
    public String getClass_year() { return class_year; }
}
