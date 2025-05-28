package com.egradebook.backend.request;

public class GetAttendanceByClassAndLessonRequest {
    int class_id;
    int schedule_id;
    String date;

    public GetAttendanceByClassAndLessonRequest(int class_id, int schedule_id, String date) {
        this.class_id = class_id;
        this.schedule_id = schedule_id;
        this.date = date;
    }
    public int getClass_id() { return class_id; }
    public int getSchedule_id() { return schedule_id; }
    public String getDate() { return date; }

    public void setClass_id(int class_id) { this.class_id = class_id; }
    public void setSchedule_id(int schedule_id) { this.schedule_id = schedule_id; }
    public void setDate(String date) { this.date = date; }
}
