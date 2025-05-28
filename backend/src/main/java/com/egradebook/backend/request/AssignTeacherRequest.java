package com.egradebook.backend.request;

public class AssignTeacherRequest {
    private final int teacher_id;
    private final int class_id;
    private final int subject_id;
    private final int group_id;

    AssignTeacherRequest(int teacher_id, int class_id, int subject_id, int group_id) {
        this.teacher_id = teacher_id;
        this.class_id = class_id;
        this.subject_id = subject_id;
        this.group_id = group_id;
    }

    public int getTeacher_id() { return teacher_id; }
    public int getClass_id() { return class_id; }
    public int getSubject_id() { return subject_id; }
    public int getGroup_id() { return group_id; }
}
