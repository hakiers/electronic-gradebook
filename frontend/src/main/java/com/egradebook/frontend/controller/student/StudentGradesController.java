package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.SubjectGrades;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class StudentGradesController {
    @FXML private Button returnButton;

    @FXML private TableView<SubjectGrades> gradesTable;
    @FXML private TableColumn<SubjectGrades, String> subjectColumn;
    @FXML private TableColumn<SubjectGrades, String> gradesColumn;

    public void initialize() {
        returnButton.setOnAction(event -> back());
        configureTableColumns();
        loadGrades();
    }

    private void configureTableColumns() {
        subjectColumn.setCellValueFactory(new PropertyValueFactory<>("subject"));
        gradesColumn.setCellValueFactory(new PropertyValueFactory<>("grades"));

        // Dodanie tooltipa z dodatkowymi informacjami
        gradesColumn.setCellFactory(column -> new TableCell<>() {
            @Override
            protected void updateItem(String item, boolean empty) {
                super.updateItem(item, empty);
                setText(null); // wyczyść domyślny tekst
                setGraphic(null); // wyczyść grafikę

                if (!empty) {
                    SubjectGrades subjectGrades = getTableView().getItems().get(getIndex());
                    Map<String, List<Grade>> gradesMap = StudentService.getStudentGrades().getValue().gradesBySubject;
                    List<Grade> grades = gradesMap.get(subjectGrades.getSubject());

                    HBox hbox = new HBox(5); // odstęp między przyciskami
                    for (Grade grade : grades) {
                        Button gradeButton = new Button(String.valueOf(grade.getGrade_value()));
                        String tooltipText = String.format("Data: %s\nOpis: %s", grade.getDate(), grade.getDescription());
                        gradeButton.setTooltip(new Tooltip(tooltipText));
                        gradeButton.setStyle("-fx-font-size: 12; -fx-padding: 3 6;"); // opcjonalne stylowanie
                        hbox.getChildren().add(gradeButton);
                    }

                    setGraphic(hbox);
                }
            }
        });
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