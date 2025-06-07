package com.egradebook.frontend.utils;

import static com.egradebook.frontend.utils.AttendanceTableHelper.MAX_LESSONS;

public class AttendanceRow {
    private final String date;
    private final String[] statuses = new String[MAX_LESSONS];

    public AttendanceRow(String date) {
        this.date = date;
    }

    public void setStatus(int lessonNumber, String symbol) {
        if (lessonNumber >= 0 && lessonNumber < MAX_LESSONS) {
            statuses[lessonNumber] = symbol;
        }
    }

    public String getDate() {
        return date;
    }

    public String getLessonStatus(int lessonNumber) {
        return (lessonNumber >= 1 && lessonNumber <= MAX_LESSONS && statuses[lessonNumber - 1] != null)
                ? statuses[lessonNumber - 1] : "";
    }
}
