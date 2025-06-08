package com.egradebook.frontend.request;

import java.time.LocalDate;

public class EditAttendanceRequest {
    private final int attendance_id;
    private final String status;
    private final String date;

    public EditAttendanceRequest(int attendance_id, String status, String date) {
        this.attendance_id = attendance_id;
        this.status = status;
        this.date = date;
    }

    public int getAttendance_id() { return attendance_id; }
    public String getStatus() { return status; }
    public String getDate() { return date; }
}