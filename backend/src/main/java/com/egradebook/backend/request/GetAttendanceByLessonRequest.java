package com.egradebook.backend.request;

public class GetAttendanceByLessonRequest {
    int schedule_id;
    String date;

    public GetAttendanceByLessonRequest(int schedule_id, String date) {
        this.schedule_id = schedule_id;
        this.date = date;
    }
    public int getSchedule_id() { return schedule_id; }
    public String getDate() { return date; }

    public void setSchedule_id(int schedule_id) { this.schedule_id = schedule_id; }
    public void setDate(String date) { this.date = date; }
}
