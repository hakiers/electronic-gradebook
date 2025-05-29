package com.egradebook.backend.dto;

import com.egradebook.backend.model.Group;
import com.egradebook.backend.model.Lesson;
import com.egradebook.backend.model.Subject;
import com.egradebook.backend.model.Teacher;

public class LessonDto {
    private int schedule_id;
    private int class_id;
    private int teacher_id;
    private int subject_id;
    private int group_id;
    private int day_od_week;
    private int lesson_number;
    private int room_number;
    private String teacher_fullname;
    private String subject_name;
    private int group_number;

    public LessonDto(Lesson lesson) {
        this.schedule_id = lesson.getSchedule_id();
        this.class_id = lesson.getClass_id();
        this.teacher_id = lesson.getTeacher_id();
        this.subject_id = lesson.getSubject_id();
        this.group_id = lesson.getGroup_id();
        this.day_od_week = lesson.getDay_od_week();
        this.lesson_number = lesson.getLesson_number();
        this.room_number = lesson.getRoom_number();
        teacher_fullname = lesson.getTeacherFullName();
        subject_name = lesson.getSubjectName();
        group_number = lesson.getGroupNumber();
    }

    public int getSchedule_id() {
        return schedule_id;
    }
    public int getClass_id() {
        return class_id;
    }
    public int getTeacher_id() {
        return teacher_id;
    }
    public int getSubject_id() {
        return subject_id;
    }
    public int getGroup_id() {
        return group_id;
    }
    public int getDay_od_week() {
        return day_od_week;
    }
    public int getLesson_number() {
        return lesson_number;
    }
    public int getRoom_number() {
        return room_number;
    }
    public String getTeacher_fullname() {
        return teacher_fullname;

    }
    public String getSubject_name() {
        return subject_name;
    }
    public int getGroup_number() {
        return group_number;
    }
}
