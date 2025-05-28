package com.egradebook.backend.model;

import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.utils.BeanUtil;

import java.util.ArrayList;
import java.util.List;

public class Clazz {
    private int class_id;
    private String name;
    private String short_name;
    private String class_year;
    private Teacher classTeacher;
    private List<Student> students = new ArrayList<>();
    private List<Lesson> scheulde = new ArrayList<>();

    private final ClassRepository classRepository = BeanUtil.getBean(ClassRepository.class);

    public Clazz() {};

    public Clazz(int class_id, String name, String short_name, String class_year, Teacher classTeacher) {
        this.class_id = class_id;
        this.name = name;
        this.short_name = short_name;
        this.class_year = class_year;
        this.classTeacher = classTeacher;
        students = classRepository.getStudentsInClass(class_id);
        scheulde = classRepository.getScheulde(class_id);
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

    public Teacher getClassTeacher() {
        return classTeacher;
    }

    public void addStudent(Student student) {
        //update w bazie?
        students.add(student);
    }

    public List<Student> getStudents() {
        return students;
    }

    public void addLesson(Lesson lesson) {
        //update w bazie?
        scheulde.add(lesson);
    }

    public List<Lesson> getScheulde(int day_of_week) {
        List<Lesson> lessons = new ArrayList<>();
        for (Lesson lesson : scheulde) {
            if(lesson.getDay_od_week() == day_of_week){
                lessons.add(lesson);
            }
        }
        return lessons;
    }

    public List<Lesson> getScheulde() {
        return scheulde;
    }


    public void assignTeacher(Teacher teacher, Subject subject, int group_id) {
        if(!teacher.getSubjects().contains(subject)){
            throw new IllegalArgumentException("Subject does not exist");
        }
        boolean assigned = classRepository.assignTeacher(teacher.getTeacher_id(), class_id, subject.getSubject_id(), group_id);
        if(!assigned){
            throw new IllegalArgumentException("Teacher already assigned");
        }
    }
}
