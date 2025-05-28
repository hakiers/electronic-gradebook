package com.egradebook.backend.request;

public class EditAttendanceRequest {
    private final int attendance_id;
    private final String status;

    public EditAttendanceRequest(int attendance_id, String status) {
        this.attendance_id = attendance_id;
        this.status = status;
    }

    public int getAttendance_id() { return attendance_id; }
    public String getStatus() { return status; }
}
