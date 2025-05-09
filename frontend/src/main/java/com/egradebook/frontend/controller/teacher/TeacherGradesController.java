package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.StudentGrades;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class TeacherGradesController {
    @FXML private Button returnButton;
    @FXML private Button addGradesButton;

    @FXML private TableView<StudentGrades> gradesTable;
    @FXML private TableColumn<StudentGrades, String> studentColumn;
    @FXML private TableColumn<StudentGrades, String> gradesColumn;
    @FXML private TableColumn<StudentGrades, String> newGradeColumn;

    @FXML private TextField descriptionField;

    private final Map<Integer, Student> students = Map.of(
            1, new Student(1, "Jan", "Kowalski"),
            2, new Student(2, "Anna", "Nowak"),
            3, new Student(3, "Piotr", "Wiśniewski")
    );

    @FXML
    public void initialize() {
        configureTableColumns();
        loadGrades();
        returnButton.setOnAction(event -> back());
        addGradesButton.setOnAction(event -> addGradesToSelected());
    }

    private void configureTableColumns() {
        studentColumn.setCellValueFactory(new PropertyValueFactory<>("studentName"));

        gradesColumn.setCellFactory(column -> new TableCell<>() {
            private final HBox hbox = new HBox(5);

            @Override
            protected void updateItem(String item, boolean empty) {
                super.updateItem(item, empty);
                setText(null);
                setGraphic(null);

                if (!empty && getTableRow() != null && getTableRow().getItem() != null) {
                    StudentGrades studentGrades = getTableRow().getItem();
                    hbox.getChildren().clear();

                    studentGrades.getGrades().forEach(grade -> {
                        Button gradeButton = new Button(String.valueOf(grade.getGrade_value()));
                        gradeButton.setTooltip(new Tooltip(
                                "Data: " + grade.getDate() + "\nOpis: " + grade.getDescription()
                        ));
                        gradeButton.setStyle("-fx-font-size: 12; -fx-padding: 3 6;");
                        hbox.getChildren().add(gradeButton);
                    });

                    setGraphic(hbox);
                }
            }
        });
        newGradeColumn.setCellFactory(column -> new TableCell<>() {
            private final TextField textField = new TextField();
            {
                textField.textProperty().addListener((obs, oldVal, newVal) -> {
                    if (!newVal.matches("\\d*") || (newVal.length() > 0 &&
                            (Integer.parseInt(newVal) < 1 || Integer.parseInt(newVal) > 6))) {
                        textField.setText(oldVal);
                    } else {
                        if (getTableRow() != null && getTableRow().getItem() != null) {
                            getTableRow().getItem().setNewGradeValue(newVal);
                        }
                    }
                });
            }
            @Override
            protected void updateItem(String item, boolean empty) {
                super.updateItem(item, empty);
                if (empty) {
                    setGraphic(null);
                } else {
                    StudentGrades studentGrades = getTableView().getItems().get(getIndex());
                    textField.setText(studentGrades.getNewGradeValue());
                    setGraphic(textField);
                }
            }
        });
    }

    @FXML
    private void addGradesToSelected() {
        String description = descriptionField.getText();
        if (description.isEmpty()) {
            showAlert("Wprowadź opis oceny");
            return;
        }

        String date = LocalDate.now().toString();
        boolean gradesAdded = false;

        for (StudentGrades studentGrades : gradesTable.getItems()) {
            String gradeValueStr = studentGrades.getNewGradeValue();
            String gradeText = gradeValueStr;

            if (!gradeText.isEmpty()) {
                try {
                    int gradeValue = Integer.parseInt(gradeText);
                    Grade newGrade = new Grade(
                            getStudentId(studentGrades.getStudentName()),
                            1, // ID przedmiotu
                            2, // ID nauczyciela
                            date,
                            gradeValue,
                            description
                    );
                    studentGrades.addGrade(newGrade);
                    gradesAdded = true;
                } catch (NumberFormatException e) {
                    showAlert("Nieprawidłowa ocena dla: " + studentGrades.getStudentName());
                }
            }
        }

        if (gradesAdded) {
            // Wymuszenie odświeżenia tabeli
            gradesTable.refresh();
            showSuccessAlert("Dodano nowe oceny!");
        } else {
            showAlert("Nie dodano żadnych ocen. Wprowadź oceny w odpowiednie pola.");
        }
        descriptionField.clear();
    }

    private void showSuccessAlert(String message) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setTitle("Sukces");
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.showAndWait();
    }

    private int getStudentId(String fullName) {
        return students.values().stream()
                .filter(s -> s.getFullName().equals(fullName))
                .findFirst()
                .map(Student::getId)
                .orElse(-1);
    }

    private void showAlert(String message) {
        Alert alert = new Alert(Alert.AlertType.WARNING);
        alert.setTitle("Uwaga");
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.showAndWait();
    }

    private void loadGrades() {
        List<Grade> grades = List.of(
                new Grade(1, 1, 2, "2023-10-15", 5, "Matematyka - sprawdzian"),
                new Grade(1, 1, 2, "2023-10-22", 4, "Matematyka - kartkówka"),
                new Grade(2, 1, 2, "2023-10-18", 4, "Matematyka - analiza"),
                new Grade(2, 1, 2, "2023-11-02", 5, "Matematyka - wypracowanie"),
                new Grade(3, 1, 2, "2023-10-20", 5, "Matematyka - projekt")
        );

        Map<String, List<Grade>> gradesByStudent = grades.stream()
                .collect(Collectors.groupingBy(
                        grade -> students.get(grade.getStudent_id()).getFullName()
                ));

        ObservableList<StudentGrades> studentGradesList = FXCollections.observableArrayList();
        gradesByStudent.forEach((studentName, studentGrades) -> {
            studentGradesList.add(new StudentGrades(studentName, studentGrades));
        });

        gradesTable.setItems(studentGradesList);
    }
    private void back() {
        Stage currentStage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/teacher/SelectClass.fxml", "Wybór klasy");
    }
}