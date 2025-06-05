package com.egradebook.frontend.request;

public class AddAttendanceRequest {
    private final int student_id;
    private final int schedule_id;
    private final String status;

    public AddAttendanceRequest(int student_id, int schedule_id, String status) {
        this.student_id = student_id;
        this.schedule_id = schedule_id;
        this.status = status;
    }

    public int getStudent_id() { return student_id; }
    public int getSchedule_id() { return schedule_id; }
    public String getStatus() { return status; }

}
