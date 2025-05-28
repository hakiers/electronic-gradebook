package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.dto.SubjectWithGrades;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.GradeButtonCellFactory;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.stage.Stage;

import java.util.List;
import java.util.Map;

public class StudentGradesController {
    @FXML private Button returnButton;

    @FXML private TableView<SubjectWithGrades> gradesTable;
    @FXML private TableColumn<SubjectWithGrades, String> subjectColumn;
    @FXML private TableColumn<SubjectWithGrades, String> gradesColumn;

    public void initialize() {
        configureTableColumns();
        loadGrades();
    }

    private void configureTableColumns() {
        // Wyciąga nazwę przedmiotu z Subject
        subjectColumn.setCellValueFactory(cellData ->
                new SimpleStringProperty(cellData.getValue().getSubject().getName()));

        // Pusta wartość, bo nadpisujemy ją przyciskami
        gradesColumn.setCellValueFactory(cellData -> new SimpleStringProperty(""));

        gradesColumn.setCellFactory(
                new GradeButtonCellFactory<>(
                        SubjectWithGrades::getGrades,
                        grade -> {
                            System.out.println("Kliknięto ocenę: " + grade.getGrade_value() + " (" + grade.getDescription() + ")");
                        },
                        grade -> false
                ).create()
        );
    }


    private void loadGrades() {
        List<SubjectWithGrades> subjectGrades = StudentService.getStudentGrades().getValue();

        if (subjectGrades != null) {
            ObservableList<SubjectWithGrades> subjectGradesList = FXCollections.observableArrayList(subjectGrades);
            gradesTable.setItems(subjectGradesList);
        }
    }

    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }
}