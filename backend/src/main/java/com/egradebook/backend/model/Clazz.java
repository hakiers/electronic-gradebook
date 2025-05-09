package com.egradebook.backend.model;

import java.util.List;

public class Clazz {
    private int class_id;
    private String name;
    private int class_teacher_id;
    private List<Student> students;

    public Clazz(){}
    public Clazz(int class_id, String name, int class_teacher_id, List<Student> students) {
        this.name = name;
        this.class_teacher_id = class_teacher_id;
        this.class_id = class_id;
        this.students = students;
    }

    public int getClassId() { return class_id; }
    public String getName() { return name; }
    public int getClassTeacherId() { return class_teacher_id; }
    public List<Student> getStudents() { return students; }

    public void setName(String name) { this.name = name; }
    public void setClassTeacherId(int classTeacherId) { this.class_teacher_id = classTeacherId; }
    public void setStudents(List<Student> students) { this.students = students; }
    public void setClassId(int classId) { this.class_id = classId; }
    public void addStudent(Student student) { students.add(student); }
    public void removeStudent(Student student) { students.remove(student); }
}
