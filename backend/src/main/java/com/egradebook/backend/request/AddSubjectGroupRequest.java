package com.egradebook.backend.request;

public class AddSubjectGroupRequest {
    private int class_id;
    private int subject_id;
    private int group_number;

    public AddSubjectGroupRequest(int class_id, int subject_id, int group_number) {
        this.class_id = class_id;
        this.subject_id = subject_id;
        this.group_number = group_number;
    }

    public int getClass_id() { return class_id; }
    public int getSubject_id() { return subject_id; }
    public int getGroup_number() { return group_number; }
}
