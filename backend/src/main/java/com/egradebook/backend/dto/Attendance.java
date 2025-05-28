package com.egradebook.backend.dto;

public class Attendance {
    private int student_id;
    private int attendance_id;
    private int schedule_id;
    private String status;
    private String date;

    public Attendance(int student_id, int attendance_id, int schedule_id, String status, String date) {
        this.student_id = student_id;
        this.attendance_id = attendance_id;
        this.schedule_id = schedule_id;
        this.status = status;
        this.date = date;
    }
    public int getStudent_id() { return student_id; }
    public int getAttendance_id() { return attendance_id; }
    public int getSchedule_id() { return schedule_id; }
    public String getStatus() { return status; }
    public String getDate() { return date; }

    public void setStudent_id(int student_id) { this.student_id = student_id; }
    public void setAttendance_id(int attendance_id) { this.attendance_id = attendance_id; }
    public void setSchedule_id(int schedule_id) { this.schedule_id = schedule_id; }
    public void setStatus(String status) { this.status = status; }
    public void setDate(String date) { this.date = date; }

}
