package com.egradebook.frontend.model;


public class Lesson {
    private int schedule_id;
    private int class_id;
    private int teacher_id;
    private int subject_id;
    private int group_id;
    private int day_od_week;
    private int lesson_number;
    private int room_number;
    private int group_number;
    private String teacher_fullname;
    private String subject_name;

    public Lesson(){}

    public Lesson(int schedule_id, int class_id, int teacher_id, int subject_id, int group_id, int day_od_week, int lesson_number, int room_number) {
        this.schedule_id = schedule_id;
        this.class_id = class_id;
        this.teacher_id = teacher_id;
        this.subject_id = subject_id;
        this.group_id = group_id;
        this.day_od_week = day_od_week;
        this.lesson_number = lesson_number;
        this.room_number = room_number;
    }
    public Lesson(int schedule_id, int class_id, int teacher_id, int subject_id, int group_id, int day_od_week, int lesson_number, int room_number,String teacher_fullname,String subject_name,int group_number) {
        this.schedule_id = schedule_id;
        this.class_id = class_id;
        this.teacher_id = teacher_id;
        this.subject_id = subject_id;
        this.group_id = group_id;
        this.day_od_week = day_od_week;
        this.lesson_number = lesson_number;
        this.room_number = room_number;
        this.teacher_fullname = teacher_fullname;
        this.subject_name = subject_name;
        this.group_number = group_number;
    }

    public int getSchedule_id() { return schedule_id; }
    public int getClass_id() { return class_id; }
    public int getTeacher_id() { return teacher_id; }
    public int getSubject_id() { return subject_id; }
    public int getGroup_id() { return group_id; }
    public int getDay_od_week() { return day_od_week; }
    public int getLesson_number() { return lesson_number; }
    public int getRoom_number() { return room_number; }
    public String getTeacher_fullname() { return teacher_fullname; }
    public String getSubject_name() { return subject_name; }
    public int getGroup_number() { return group_number; }

    public void setSchedule_id(int schedule_id) { this.schedule_id = schedule_id; }
    public void setClass_id(int class_id) { this.class_id = class_id; }
    public void setTeacher_id(int teacher_id) { this.teacher_id = teacher_id; }
    public void setSubject_id(int subject_id) { this.subject_id = subject_id; }
    public void setGroup_id(int group_id) { this.group_id = group_id; }
    public void setDay_od_week(int day_od_week) { this.day_od_week = day_od_week; }
    public void setLesson_number(int lesson_number) { this.lesson_number = lesson_number; }
    public void setRoom_number(int room_number) { this.room_number = room_number; }
    public void setTeacher_fullname(String teacher_fullname) {this.teacher_fullname = teacher_fullname;}
    public void setSubject_name(String subject_name) {this.subject_name = subject_name;}
    public void setGroup_number(int group_number) { this.group_number = group_number; }
}
