package com.egradebook.frontend.dto;

public class AddScheduleRequest {
    private int class_id;
    private int teacher_id;
    private int subject_id;
    private int group_id;
    private int day_of_week;
    private int lesson_number;
    private int room_number;

    public AddScheduleRequest(int class_id, int teacher_id, int subject_id, int group_id, int day_of_week, int lesson_number, int room_number) {
        this.class_id = class_id;
        this.teacher_id = teacher_id;
        this.subject_id = subject_id;
        this.group_id = group_id;
        this.day_of_week = day_of_week;
        this.lesson_number = lesson_number;
        this.room_number = room_number;
    }

    public int getClass_id() { return class_id; }
    public int getTeacher_id() { return teacher_id; }
    public int getSubject_id() { return subject_id; }
    public int getGroup_id() { return group_id; }
    public int getDay_of_week() { return day_of_week; }
    public int getLesson_number() { return lesson_number; }
    public int getRoom_number() { return room_number; }
}
