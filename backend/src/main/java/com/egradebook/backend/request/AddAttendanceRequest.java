package com.egradebook.backend.request;

import java.time.LocalDate;

public class AddAttendanceRequest {
    private final int student_id;
    private final int schedule_id;
    private final String status;
    private final LocalDate date;

    public AddAttendanceRequest(int student_id, int schedule_id, String status, LocalDate date) {
        this.student_id = student_id;
        this.schedule_id = schedule_id;
        this.status = status;
        this.date = date;
    }

    public int getStudent_id() { return student_id; }
    public int getSchedule_id() { return schedule_id; }
    public String getStatus() { return status; }
    public LocalDate getDate() { return date; }

}
