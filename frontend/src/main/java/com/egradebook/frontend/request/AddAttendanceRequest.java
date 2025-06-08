package com.egradebook.frontend.request;

import java.time.LocalDate;

public class AddAttendanceRequest {
    private final int student_id;
    private final int schedule_id;
    private final String status;
    private final String date;

    public AddAttendanceRequest(int student_id, int schedule_id, String status, String date) {
        this.student_id = student_id;
        this.schedule_id = schedule_id;
        this.status = status;
        this.date = date;
    }

    public int getStudent_id() { return student_id; }
    public int getSchedule_id() { return schedule_id; }
    public String getStatus() { return status; }
    public String getDate() { return date; }

}
