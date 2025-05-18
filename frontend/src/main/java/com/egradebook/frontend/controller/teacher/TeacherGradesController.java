package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.dto.AddGradeRequest;
import com.egradebook.frontend.dto.EditGradeRequest;
import com.egradebook.frontend.dto.RemoveGradeRequest;
import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.StudentGrades;
import com.egradebook.frontend.service.GradeService;
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
    @FXML private Button editGradeButton;

    @FXML private TableView<StudentGrades> gradesTable;
    @FXML private TableColumn<StudentGrades, String> studentColumn;
    @FXML private TableColumn<StudentGrades, String> gradesColumn;
    @FXML private TableColumn<StudentGrades, String> newGradeColumn;

    @FXML private TextField descriptionField;
    @FXML private TextField newGradeField;

    private final List<Student> students = TeacherService.getStudentInClass().getValue();

    Grade selected_grade;


    public void initialize() {
        configureTableColumns();
        loadGrades();
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
                        // Dodaj styl dla wybranej oceny
                        if (grade.equals(selected_grade)) {
                            gradeButton.setStyle("-fx-font-size: 12; -fx-padding: 3 6; -fx-background-color: #d3d3d3;");
                        } else {
                            gradeButton.setStyle("-fx-font-size: 12; -fx-padding: 3 6;");
                        }

                        gradeButton.setOnAction(event -> {
                            selected_grade = grade;
                            newGradeField.setText(String.valueOf(grade.getGrade_value()));
                            gradesTable.refresh(); // Odśwież aby pokazać wybór
                        });
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
                    AddGradeRequest request=new AddGradeRequest(getStudentId(studentGrades.getStudentName()).intValue(),
                            1,gradeValue,date,description);
                    GradeService.addGrade(request);
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
        });

        // Sortowanie alfabetyczne po nazwisku i imieniu
        studentGradesList.sort(Comparator.comparing(StudentGrades::getStudentName));

        gradesTable.setItems(studentGradesList);
    }
    @FXML
    private void edit() {
        if (selected_grade == null) {
            showAlert("Wybierz ocenę do edycji");
            return;
        }

        try {
            float newGradeValue = Float.parseFloat(newGradeField.getText());
            if (newGradeValue < 1 || newGradeValue > 6) {
                showAlert("Ocena musi być w zakresie 1-6");
                return;
            }

            EditGradeRequest request = new EditGradeRequest(
                    selected_grade.getGrade_id(),
                    newGradeValue,
                    selected_grade.getDescription()
            );
            GradeService.editGrade(request);
            refreshGrades(); // Odśwież dane po edycji
            showSuccessAlert("Pomyślnie zaktualizowano ocenę");
            newGradeField.clear();
        } catch (NumberFormatException e) {
            showAlert("Wprowadź poprawną wartość oceny");
        }
    }
    private void refreshGrades() {
        loadGrades(); // Ponownie ładuje dane
        gradesTable.refresh(); // Wymusza odświeżenie widoku tabeli
    }
    @FXML
    private void delete() {
        RemoveGradeRequest request = new RemoveGradeRequest(selected_grade.getGrade_id());
        //GradeService
    }
    @FXML
    private void back() {
        Stage currentStage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/teacher/SelectClass.fxml", "Wybór klasy");
    }
}