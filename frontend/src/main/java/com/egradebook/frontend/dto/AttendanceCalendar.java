package com.egradebook.frontend.dto;

import com.egradebook.frontend.model.Attendance;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class AttendanceCalendar {
    private final LocalDate date;
    private final Map<Integer, Attendance.Status> lessons; // Key: lesson number, Value: status

    public AttendanceCalendar(LocalDate date, List<Attendance> attendances) {
        this.date = date;
        this.lessons = attendances.stream()
                .collect(Collectors.toMap(
                        Attendance::getLessonNumber,
                        Attendance::getStatus
                ));
    }

    public LocalDate getDate() {
        return date;
    }

    public Attendance.Status getStatusForLesson(int lessonNumber) {
        return lessons.getOrDefault(lessonNumber, null);
    }
}