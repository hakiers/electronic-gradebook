package com.egradebook.backend.model;

import com.egradebook.backend.repository.GroupRepository;
import com.egradebook.backend.repository.SubjectRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.utils.BeanUtil;

public class Lesson {
    private int schedule_id;
    private int class_id;
    private int teacher_id;
    private int subject_id;
    private int group_id;
    private int day_od_week;
    private int lesson_number;
    private int room_number;
    private Subject subject;
    private Teacher teacher;
    private Group group;

    private final TeacherRepository teacherRepository =  BeanUtil.getBean(TeacherRepository.class);
    private final GroupRepository groupRepository =  BeanUtil.getBean(GroupRepository.class);
    private final SubjectRepository subjectRepository =  BeanUtil.getBean(SubjectRepository.class);

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

    public int getSchedule_id() { return schedule_id; }
    public int getClass_id() { return class_id; }
    public int getTeacher_id() { return teacher_id; }
    public int getSubject_id() { return subject_id; }
    public int getGroup_id() { return group_id; }
    public int getDay_od_week() { return day_od_week; }
    public int getLesson_number() { return lesson_number; }
    public int getRoom_number() { return room_number; }

    public String getSubjectName() {
        loadSubject();
        return subject.getName();
    }

    public String getTeacherFullName(){
        loadTeacher();
        return teacher.getFullName();
    }

    public int getGroupNumber(){
        loadGroup();
        return group.getGroup_number();
    };

    public void loadSubject(){
        if(subject_id == 0) return;
        subject = subjectRepository.getSubject(subject_id);
    }

    public void loadTeacher(){
        if(teacher_id == 0) return;
        teacher = teacherRepository.getTeacher(teacher_id);
    }

    public void loadGroup(){
        if(group_id == 0) return;
        group = groupRepository.getGroup(group_id);
    }

    public void setSchedule_id(int schedule_id) { this.schedule_id = schedule_id; }
    public void setClass_id(int class_id) { this.class_id = class_id; }
    public void setTeacher_id(int teacher_id) { this.teacher_id = teacher_id; }
    public void setSubject_id(int subject_id) { this.subject_id = subject_id; }
    public void setGroup_id(int group_id) { this.group_id = group_id; }
    public void setDay_od_week(int day_od_week) { this.day_od_week = day_od_week; }
    public void setLesson_number(int lesson_number) { this.lesson_number = lesson_number; }
    public void setRoom_number(int room_number) { this.room_number = room_number; }
}
