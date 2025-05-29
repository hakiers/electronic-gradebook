package com.egradebook.frontend.model;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonValue;

import java.time.LocalDate;

public class Attendance {
    @JsonProperty("attendance_id")
    private int attendanceId;

    @JsonProperty("student_id")
    private int studentId;

    @JsonProperty("schedule_id")
    private Integer scheduleId;

    @JsonProperty("date")
    private String date;

    @JsonProperty("status")
    private Status status;

    private int lessonNumber;

    public Attendance() {
        // Required by Jackson
    }

    public Attendance(int attendanceId, int studentId, Integer scheduleId,
                      String date, int lessonNumber, Status status) {
        this.attendanceId = attendanceId;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public int getLessonNumber() {
        return lessonNumber;
    }
    public void setLessonNumber(int lessonNumber) { this.lessonNumber = lessonNumber; }
    public enum Status {
        PRESENCE("present"),
        ABSENCE("absence"),
        LATE("late"),
        EXCUSED_ABSCENCE("excused absence");

        private final String value;

        Status(String value) {
            this.value = value;
        }

        @JsonValue
        public String toValue() {
            return value;
        }

        @JsonCreator
        public static Status forValue(String value) {
            for (Status s : Status.values()) {
                if (s.value.equalsIgnoreCase(value)) {
                    return s;
                }
            }
            throw new IllegalArgumentException("Unknown status: " + value);
        }
    }
}
