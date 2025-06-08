package com.egradebook.backend.request;

public class ChangeClassRequest {
    private final int student_id;
    private final int class_id;

    public ChangeClassRequest(int student_id, int class_id) {
        this.student_id = student_id;
        this.class_id = class_id;
    }

    public int getStudent_id() {
        return student_id;
    }

    public int getClass_id() {
        return class_id;
    }
}
