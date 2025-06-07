package com.egradebook.frontend.controller.parent;

import com.egradebook.frontend.service.ParentService;
import com.egradebook.frontend.utils.AttendanceRow;
import com.egradebook.frontend.utils.AttendanceTableHelper;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.util.*;

public class ChildAttendanceController {

    @FXML private Button returnButton;
    @FXML private TableView<AttendanceRow> attendanceTable;
    @FXML private TableColumn<AttendanceRow, String> dateColumn;
    @FXML private VBox mainContainer;

    @FXML private TableColumn<AttendanceRow, String> lesson1Column;
    @FXML private TableColumn<AttendanceRow, String> lesson2Column;
    @FXML private TableColumn<AttendanceRow, String> lesson3Column;
    @FXML private TableColumn<AttendanceRow, String> lesson4Column;
    @FXML private TableColumn<AttendanceRow, String> lesson5Column;
    @FXML private TableColumn<AttendanceRow, String> lesson6Column;
    @FXML private TableColumn<AttendanceRow, String> lesson7Column;
    @FXML private TableColumn<AttendanceRow, String> lesson8Column;

    private final int MAX_LESSONS = 8;

    @FXML
    public void initialize() {
        AttendanceTableHelper.configureColumns(dateColumn, List.of(
                lesson1Column, lesson2Column, lesson3Column, lesson4Column,
                lesson5Column, lesson6Column, lesson7Column, lesson8Column
        ));

        AttendanceTableHelper.loadData(attendanceTable, () -> ParentService.getAttendance().getValue(),dateColumn); // lub StudentService

        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            scene.getStylesheets().add(getClass().getResource("/css/base.css").toExternalForm());
            scene.getStylesheets().add(getClass().getResource("/css/student.css").toExternalForm());
            attendanceTable.setColumnResizePolicy(TableView.UNCONSTRAINED_RESIZE_POLICY);
        });
    }

    @FXML
    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

}
