package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.dto.AttendanceCalendar;
import com.egradebook.frontend.model.Attendance;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;

public class StudentAttendanceController {

    @FXML private Button returnButton;
    @FXML private TableView<AttendanceCalendar> attendanceTable;
    @FXML private TableColumn<AttendanceCalendar, String> dateColumn;

    // Kolumny dla lekcji 1-10
    @FXML private TableColumn<AttendanceCalendar, String> lesson1Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson2Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson3Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson4Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson5Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson6Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson7Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson8Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson9Column;
    @FXML private TableColumn<AttendanceCalendar, String> lesson10Column;

    private final int MAX_LESSONS = 10; // Maksymalna liczba lekcji w dniu

    @FXML
    public void initialize() {
        configureTableColumns();
        loadSampleData();
    }

    private void configureTableColumns() {
        dateColumn.setCellValueFactory(new PropertyValueFactory<>("date"));

        // Konfiguracja kolumn dla lekcji
        for (int i = 1; i <= MAX_LESSONS; i++) {
            final int lessonNumber = i;
            TableColumn<AttendanceCalendar, String> column = getLessonColumn(i);
            column.setCellValueFactory(cellData -> {
                Attendance.Status status = cellData.getValue().getStatusForLesson(lessonNumber);
                return javafx.beans.binding.Bindings.createStringBinding(
                        () -> status != null ? getStatusSymbol(status) : ""
                );
            });
        }
    }

    private TableColumn<AttendanceCalendar, String> getLessonColumn(int lessonNumber) {
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

            default -> throw new IllegalArgumentException("Invalid lesson number");
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
        ObservableList<AttendanceCalendar> data = FXCollections.observableArrayList();

        // Przykładowe dane
        data.add(new AttendanceCalendar(
                LocalDate.now(),
                Arrays.asList(
                        new Attendance(1, 1, 1, LocalDate.now(), 1, Attendance.Status.PRESENT),
                        new Attendance(2, 1, 2, LocalDate.now(), 3, Attendance.Status.LATE)
                )
        ));

        data.add(new AttendanceCalendar(
                LocalDate.now().minusDays(1),
                Arrays.asList(
                        new Attendance(3, 1, 1, LocalDate.now().minusDays(1), 2, Attendance.Status.ABSENT),
                        new Attendance(4, 1, 3, LocalDate.now().minusDays(1), 4, Attendance.Status.PRESENT)
                )
        ));

        attendanceTable.setItems(data);
    }

    @FXML
    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }
}