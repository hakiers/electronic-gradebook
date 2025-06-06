package com.egradebook.backend.dto;

import com.egradebook.backend.model.Clazz;
import com.egradebook.backend.model.Teacher;

public class ClazzDto {
    private int class_id;
    private String name;
    private String short_name;
    private String class_year;
    private int class_teacher;


    public ClazzDto(Clazz clazz) {
        this.class_id = clazz.getClass_id();
        this.name = clazz.getName();
        this.short_name = clazz.getShort_name();
        this.class_year = clazz.getClass_year();
        this.class_teacher = clazz.getClassTeacher().getTeacher_id();
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
}
