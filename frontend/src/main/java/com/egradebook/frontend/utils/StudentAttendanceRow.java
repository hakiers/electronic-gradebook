package com.egradebook.frontend.utils;

import com.egradebook.frontend.model.Attendance.Status;
import javafx.beans.property.*;

public class StudentAttendanceRow {
    private final Integer scheduleId;
    private final int attendanceId;
    private final int studentId;
    private final StringProperty fullName = new SimpleStringProperty();
    private final ObjectProperty<Status> status = new SimpleObjectProperty<>(Status.PRESENCE);

    public StudentAttendanceRow(Integer scheduleId, int attendanceId,int studentId, String firstName, String lastName) {
        this.scheduleId = scheduleId;
        this.attendanceId = attendanceId;
        this.studentId = studentId;
        this.fullName.set(firstName + " " + lastName);
    }
    public int getAttendanceId() {
        return attendanceId;
    }
    public int getScheduleId() {
        return scheduleId;
    }

    public int getStudentId() {
        return studentId;
    }

    public StringProperty fullNameProperty() {
        return fullName;
    }

    public String getFullName() {
        return fullName.get();
    }

    public void setFullName(String fullName) {
        this.fullName.set(fullName);
    }

    public ObjectProperty<Status> statusProperty() {
        return status;
    }

    public Status getStatus() {
        return status.get();
    }

    public void setStatus(Status status) {
        this.status.set(status);
    }

    @Override
    public String toString() {
        return "StudentAttendanceRow{" +
                "studentId=" + studentId +
                ", fullName=" + getFullName() +
                ", status=" + getStatus() +
                '}';
    }
}
