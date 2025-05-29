package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.model.Attendance;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.time.LocalDate;
import java.util.*;

public class StudentAttendanceController {

    @FXML private Button returnButton;
    @FXML private TableView<AttendanceRow> attendanceTable;
    @FXML private TableColumn<AttendanceRow, String> dateColumn;

    // Kolumny dla lekcji 1-10
    @FXML private TableColumn<AttendanceRow, String> lesson1Column;
    @FXML private TableColumn<AttendanceRow, String> lesson2Column;
    @FXML private TableColumn<AttendanceRow, String> lesson3Column;
    @FXML private TableColumn<AttendanceRow, String> lesson4Column;
    @FXML private TableColumn<AttendanceRow, String> lesson5Column;
    @FXML private TableColumn<AttendanceRow, String> lesson6Column;
    @FXML private TableColumn<AttendanceRow, String> lesson7Column;
    @FXML private TableColumn<AttendanceRow, String> lesson8Column;
    @FXML private TableColumn<AttendanceRow, String> lesson9Column;
    @FXML private TableColumn<AttendanceRow, String> lesson10Column;

    private final int MAX_LESSONS = 10;

    @FXML
    public void initialize() {
        configureTableColumns();
        loadSampleData(); // Zamień na loadData() z prawdziwymi danymi
        //loadData(StudentService.getAttendance().getValue());
    }

    private void configureTableColumns() {
        dateColumn.setCellValueFactory(cellData ->
                new SimpleStringProperty(cellData.getValue().getDate().toString())
        );

        for (int i = 1; i <= MAX_LESSONS; i++) {
            final int lessonNumber = i;
            TableColumn<AttendanceRow, String> column = getLessonColumn(lessonNumber);
            column.setCellValueFactory(cellData ->
                    new SimpleStringProperty(cellData.getValue().getLessonStatus(lessonNumber))
            );
        }
    }

    private TableColumn<AttendanceRow, String> getLessonColumn(int lessonNumber) {
        return switch (lessonNumber) {
            case 1 -> lesson1Column;
            case 2 -> lesson2Column;
            case 3 -> lesson3Column;
            case 4 -> lesson4Column;
            case 5 -> lesson5Column;
            case 6 -> lesson6Column;
            case 7 -> lesson7Column;
            case 8 -> lesson8Column;
            case 9 -> lesson9Column;
            case 10 -> lesson10Column;
            default -> throw new IllegalArgumentException("Invalid lesson number: " + lessonNumber);
        };
    }

    private String getStatusSymbol(Attendance.Status status) {
        return switch (status) {
            case PRESENT -> "✓";
            case ABSENT -> "✗";
            case LATE -> "⌚";
        };
    }

    private void loadSampleData() {
        List<Attendance> rawData = Arrays.asList(
                new Attendance(1, 1, 1, LocalDate.now(), 1, Attendance.Status.PRESENT),
                new Attendance(2, 1, 2, LocalDate.now(), 3, Attendance.Status.LATE),
                new Attendance(3, 1, 1, LocalDate.now().minusDays(1), 2, Attendance.Status.ABSENT),
                new Attendance(4, 1, 3, LocalDate.now().minusDays(1), 4, Attendance.Status.PRESENT)
        );

        loadData(rawData);
    }

    private void loadData(List<Attendance> rawData) {
        Map<LocalDate, AttendanceRow> grouped = new TreeMap<>(); // posortowane po dacie

        for (Attendance att : rawData) {
            grouped.putIfAbsent(att.getDate(), new AttendanceRow(att.getDate()));
            grouped.get(att.getDate()).setStatus(att.getLessonNumber(), getStatusSymbol(att.getStatus()));
        }

        ObservableList<AttendanceRow> rows = FXCollections.observableArrayList(grouped.values());
        attendanceTable.setItems(rows);
    }

    @FXML
    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    // Pomocnicza klasa do reprezentacji pojedynczego wiersza w tabeli
    public static class AttendanceRow {
        private final LocalDate date;
        private final String[] statuses = new String[10];

        public AttendanceRow(LocalDate date) {
            this.date = date;
        }

        public void setStatus(int lessonNumber, String symbol) {
            if (lessonNumber >= 1 && lessonNumber <= 10) {
                statuses[lessonNumber - 1] = symbol;
            }
        }

        public LocalDate getDate() {
            return date;
        }

        public String getLessonStatus(int lessonNumber) {
            return (lessonNumber >= 1 && lessonNumber <= 10 && statuses[lessonNumber - 1] != null)
                    ? statuses[lessonNumber - 1] : "";
        }
    }
}
