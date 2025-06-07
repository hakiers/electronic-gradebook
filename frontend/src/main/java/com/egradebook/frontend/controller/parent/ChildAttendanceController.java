package com.egradebook.frontend.controller.parent;

import com.egradebook.frontend.model.Attendance;
import com.egradebook.frontend.service.ParentService;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Platform;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.time.LocalDate;
import java.util.*;

public class ChildAttendanceController {

    @FXML private Button returnButton;
    @FXML private TableView<AttendanceRow> attendanceTable;
    @FXML private TableColumn<AttendanceRow, String> dateColumn;
    @FXML private VBox mainContainer;

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
        loadData(ParentService.getAttendance().getValue());
        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            scene.getStylesheets().add(getClass().getResource("/css/base.css").toExternalForm());
            scene.getStylesheets().add(getClass().getResource("/css/student.css").toExternalForm());
            attendanceTable.setColumnResizePolicy(TableView.UNCONSTRAINED_RESIZE_POLICY);

        });
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
            case PRESENCE -> "✓";
            case ABSENCE -> "✗";
            case LATE -> "⌚";
            case EXCUSED_ABSCENCE -> "U";
        };
    }


    private void loadData(List<Attendance> rawData) {
        Map<String, AttendanceRow> grouped = new TreeMap<>(); // posortowane po dacie

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
        private final String date;
        private final String[] statuses = new String[10];

        public AttendanceRow(String  date) {
            this.date = date;
        }

        public void setStatus(int lessonNumber, String symbol) {
            if (lessonNumber >= 0 && lessonNumber < 10) {
                statuses[lessonNumber] = symbol;
            }
        }

        public String getDate() {
            return date;
        }

        public String getLessonStatus(int lessonNumber) {
            return (lessonNumber >= 1 && lessonNumber <= 10 && statuses[lessonNumber - 1] != null)
                    ? statuses[lessonNumber - 1] : "";
        }
    }
}
