package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.dto.AddGradeRequest;
import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.StudentGrades;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.ReadOnlyObjectWrapper;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
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

    private final List<Student> students = TeacherService.getStudentInClass().getValue();

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

            //TODO zrobić addGrade

            if (!gradeText.isEmpty()) {
                try {
                    int gradeValue = Integer.parseInt(gradeText);
                    AddGradeRequest request=new AddGradeRequest(getStudentId(studentGrades.getStudentName()).intValue(),
                            1,gradeValue,date,description);
                    TeacherService.addGrade(request);
                    studentGrades.setNewGradeValue("");
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

    private Long getStudentId(String fullName) {
        return students.stream()
                .filter(s -> s.getFullName().equals(fullName))
                .findFirst()
                .map(Student::getStudent_id).orElse(null);
    }

    private void showAlert(String message) {
        Alert alert = new Alert(Alert.AlertType.WARNING);
        alert.setTitle("Uwaga");
        alert.setHeaderText(null);
        alert.setContentText(message);
        alert.showAndWait();
    }

    private void loadGrades() {
        List<Grade> grades = new ArrayList<>();

        // Tworzymy mapę student_id -> Student dla łatwego wyszukiwania
        Map<Integer, Student> studentMap = students.stream()
                .collect(Collectors.toMap(
                        student -> student.getStudent_id().intValue(),
                        student -> student
                ));

        for(Student student : studentMap.values()) {
            //TODO przedmiot wpisany na sztywno!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
            List<Grade> studentGrades=TeacherService.getGradesForStudent(student.getStudent_id().intValue(),1).getValue();
            if(studentGrades!=null && !studentGrades.isEmpty()) {
                grades.addAll(studentGrades);
            }

        }
        // Grupujemy oceny po ID studenta
        Map<Integer, List<Grade>> gradesByStudentId = grades.stream()
                .collect(Collectors.groupingBy(Grade::getStudent_id));

        ObservableList<StudentGrades> studentGradesList = FXCollections.observableArrayList();

        // Przetwarzamy wszystkich studentów
        students.forEach(student -> {
            String fullName = student.getName() + " " + student.getSurname();
            List<Grade> studentGrades = gradesByStudentId.getOrDefault(student.getStudent_id().intValue(), new ArrayList<>());
            studentGradesList.add(new StudentGrades(fullName, studentGrades));
            /*
            // Debug: wypisz informacje o studentach i ich ocenach
            System.out.println("Student: " + fullName + " (ID: " + student.getStudent_id() + ")");
            studentGrades.forEach(g -> System.out.println("  Ocena: " + g.getGrade_value()));
             */
        });

        // Sortowanie alfabetyczne po nazwisku i imieniu
        studentGradesList.sort(Comparator.comparing(StudentGrades::getStudentName));

        gradesTable.setItems(studentGradesList);
    }
    private void back() {
        Stage currentStage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/teacher/SelectClass.fxml", "Wybór klasy");
    }
}