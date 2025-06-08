package com.egradebook.frontend.request;

public class ChangeClassRequest {
    private int student_id;
    private int class_id;

    public ChangeClassRequest() {}

    public ChangeClassRequest(int student_id, int class_id) {
        this.student_id = student_id;
        this.class_id = class_id;
    }

    public void setStudent_id(int student_id) {
        this.student_id = student_id;
    }

    public int getStudent_id() {
        return student_id;
    }

    public void setClass_id(int class_id) {
        this.class_id = class_id;
    }

    public int getClass_id() {
        return class_id;
    }

}
