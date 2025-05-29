package com.egradebook.frontend.model;

import java.time.LocalDate;

public class Attendance {
    private int attendanceId;
    private int studentId;
    private Integer scheduleId;
    private LocalDate date;
    private Status status;
    int lessonNumber;

    public enum Status {
        PRESENT, ABSENT, LATE;

        public static Status fromString(String value) {
            return switch (value.toLowerCase()) {
                case "present" -> PRESENT;
                case "absent" -> ABSENT;
                case "late" -> LATE;
                default -> throw new IllegalArgumentException("Unknown status: " + value);
            };
        }

        @Override
        public String toString() {
            return name().toLowerCase();
        }
    }

    public Attendance(int attendanceId, int studentId, Integer scheduleId,
                      LocalDate date, int lessonNumber, Status status) {        this.attendanceId = attendanceId;
        this.studentId = studentId;
        this.scheduleId = scheduleId;
        this.date = date;
        this.status = status;
        this.lessonNumber = lessonNumber;
    }

    // Gettery i settery
    public int getAttendanceId() {
        return attendanceId;
    }

    public void setAttendanceId(int attendanceId) {
        this.attendanceId = attendanceId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public Integer getScheduleId() {
        return scheduleId;
    }

    public void setScheduleId(Integer scheduleId) {
        this.scheduleId = scheduleId;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public Status getStatus() {
        return status;
    }


    public int getLessonNumber() {
        return lessonNumber;
    }
}
