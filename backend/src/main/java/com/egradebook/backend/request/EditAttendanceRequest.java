package com.egradebook.backend.request;

import java.time.LocalDate;

public class EditAttendanceRequest {
    private final int attendance_id;
    private final String status;
    private final LocalDate date;

    public EditAttendanceRequest(int attendance_id, String status, LocalDate date) {
        this.attendance_id = attendance_id;
        this.status = status;
        this.date = date;
    }

    public int getAttendance_id() { return attendance_id; }
    public String getStatus() { return status; }
    public LocalDate getDate() { return date; }
}
