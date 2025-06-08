package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.dto.SubjectWithGrades;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.GradeButtonCellFactory;
import com.egradebook.frontend.utils.GradesTableHelper;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Platform;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.Region;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.util.List;
import java.util.Map;

public class StudentGradesController {
    @FXML private Button returnButton;
    @FXML private VBox mainContainer;

    @FXML private TableView<SubjectWithGrades> gradesTable;
    @FXML private TableColumn<SubjectWithGrades, String> subjectColumn;
    @FXML private TableColumn<SubjectWithGrades, String> gradesColumn;

    public void initialize() {
        GradesTableHelper.configureColumns(subjectColumn, gradesColumn);
        GradesTableHelper.loadData(gradesTable, () -> StudentService.getStudentGrades().getValue());

        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            scene.getStylesheets().add(getClass().getResource("/css/base.css").toExternalForm());
            scene.getStylesheets().add(getClass().getResource("/css/student.css").toExternalForm());
        });
    }


    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }
}