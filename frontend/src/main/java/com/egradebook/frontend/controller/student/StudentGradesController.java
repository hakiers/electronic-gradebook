package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.SubjectGrades;
import com.egradebook.frontend.service.StudentService;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.Tooltip;
import javafx.scene.control.cell.PropertyValueFactory;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class StudentGradesController {

    @FXML private TableView<SubjectGrades> gradesTable;
    @FXML private TableColumn<SubjectGrades, String> subjectColumn;
    @FXML private TableColumn<SubjectGrades, String> gradesColumn;

    @FXML
    public void initialize() {
        configureTableColumns();
        loadGrades();
    }

    private void configureTableColumns() {
        subjectColumn.setCellValueFactory(new PropertyValueFactory<>("subject"));
        gradesColumn.setCellValueFactory(new PropertyValueFactory<>("grades"));

        // Dodanie tooltipa z dodatkowymi informacjami
        gradesColumn.setCellFactory(column -> new TableCell<SubjectGrades, String>() {
            @Override
            protected void updateItem(String item, boolean empty) {
                super.updateItem(item, empty);
                setText(item);

                if (!empty) {
                    SubjectGrades subjectGrades = getTableView().getItems().get(getIndex());
                    String tooltipText = createTooltipText(subjectGrades);
                    setTooltip(new Tooltip(tooltipText));
                }
            }
        });
    }

    private String createTooltipText(SubjectGrades subjectGrades) {
        Map<String, List<Grade>> gradesMap = StudentService.getStudentGrades().getValue().gradesBySubject;
        List<Grade> grades = gradesMap.get(subjectGrades.getSubject());

        return grades.stream()
                .map(grade -> String.format("%s - %s: %d (%s)",
                        grade.getDate(),
                        "Ocena",
                        grade.getGrade_value(),
                        grade.getDescription()))
                .collect(Collectors.joining("\n"));
    }

    private void loadGrades() {
        Map<String, List<Grade>> gradesMap = StudentService.getStudentGrades().getValue().gradesBySubject;
        ObservableList<SubjectGrades> subjectGradesList = FXCollections.observableArrayList();

        gradesMap.forEach((subject, grades) -> {
            subjectGradesList.add(new SubjectGrades(subject, grades));
        });

        gradesTable.setItems(subjectGradesList);
    }
}