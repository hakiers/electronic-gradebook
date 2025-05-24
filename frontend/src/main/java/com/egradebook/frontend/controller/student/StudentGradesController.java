package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.SubjectGrades;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.GradeButtonCellFactory;
import com.egradebook.frontend.utils.ViewLoader;
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

    @FXML private TableView<SubjectGrades> gradesTable;
    @FXML private TableColumn<SubjectGrades, String> subjectColumn;
    @FXML private TableColumn<SubjectGrades, String> gradesColumn;

    public void initialize() {
        configureTableColumns();
        loadGrades();
    }

    private void configureTableColumns() {
        subjectColumn.setCellValueFactory(new PropertyValueFactory<>("subject"));
        gradesColumn.setCellValueFactory(new PropertyValueFactory<>("grades"));

        gradesColumn.setCellFactory(
                new GradeButtonCellFactory<SubjectGrades>(
                        subjectGrades -> {
                            Map<String, List<Grade>> gradesBySubject = StudentService.getStudentGrades().getValue().gradesBySubject;
                            return gradesBySubject.getOrDefault(subjectGrades.getSubject(), List.of());
                        },
                        null,
                        grade -> false
                ).create()
        );
    }


    private void loadGrades() {
        Map<String, List<Grade>> gradesMap = StudentService.getStudentGrades().getValue().gradesBySubject;
        ObservableList<SubjectGrades> subjectGradesList = FXCollections.observableArrayList();

        gradesMap.forEach((subject, grades) -> {
            subjectGradesList.add(new SubjectGrades(subject, grades));
        });

        gradesTable.setItems(subjectGradesList);
    }

    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);    }
}