package com.egradebook.frontend.dto;

import com.egradebook.frontend.model.Attendance;

import java.time.LocalDate;
import java.util.List;

public class AttendanceByDate {
    private LocalDate date;
    private List<Attendance> lessons;

    public AttendanceByDate(LocalDate date, List<Attendance> lessons) {
        this.date = date;
        this.lessons = lessons;
    }
}
