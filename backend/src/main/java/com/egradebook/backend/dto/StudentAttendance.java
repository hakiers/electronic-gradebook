package com.egradebook.backend.dto;

public class StudentAttendance {
    private int student_id;
    private int attendance_id;
    private Integer schedule_id;
    private String status;
    private String date;
    private Integer lesson_number;

    public StudentAttendance(int student_id, int attendance_id, Integer schedule_id, String status, String date
    , Integer lesson_number) {
        this.student_id = student_id;
        this.attendance_id = attendance_id;
        this.schedule_id = (schedule_id != null) ? schedule_id : 0;         this.status = status;
        this.date = date;
        this.lesson_number = lesson_number;
    }
    public int getStudent_id() { return student_id; }
    public int getAttendance_id() { return attendance_id; }
    public int getSchedule_id() { return schedule_id; }
    public String getStatus() { return status; }
    public String getDate() { return date; }
    public Integer getLesson_number() { return lesson_number; }
    public void setStudent_id(int student_id) { this.student_id = student_id; }
    public void setAttendance_id(int attendance_id) { this.attendance_id = attendance_id; }
    public void setSchedule_id(int schedule_id) { this.schedule_id = schedule_id; }
    public void setStatus(String status) { this.status = status; }
    public void setDate(String date) { this.date = date; }
    public void setLesson_number(int lesson_number) { this.lesson_number = lesson_number; }
}
