package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.service.ClassService;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.util.ArrayList;
import java.util.List;

public class StudentManageController {
    @FXML private Button returnButton;
    @FXML private TableView<Student> studentsTable;
    @FXML private TableColumn<Student, String> colFirstName;
    @FXML private TableColumn<Student, String> colLastName;
    @FXML private TableColumn<Student, String> colClass;

    @FXML private Label detailFirstName;
    @FXML private Label detailLastName;
    @FXML private Label detailClass;
    @FXML private Label detailGroups;
    @FXML private Label detailUsername;
    @FXML private Label detailEmail;
    @FXML private Label detailPhone;
    @FXML private Label detailAddress;
    @FXML private Label pesel;

    private List<Student> students;

    @FXML
    public void initialize() {
        colFirstName.setCellValueFactory(data->  new SimpleStringProperty(data.getValue().getName()));
        colLastName.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getSurname()));
        colClass.setCellValueFactory(data -> {
            Clazz clazz = ClassService.getClazz(data.getValue().getClass_id()).getValue();
            return new SimpleStringProperty(clazz != null ? clazz.getShort_name() : "");
        });

        students = StudentService.getAllStudents().getValue();
        if(students == null) {
            students = new ArrayList<>();
        }
        studentsTable.setItems(FXCollections.observableArrayList(students));

        // Obsługa wyboru ucznia
        studentsTable.getSelectionModel().selectedItemProperty().addListener(
                (obs, oldSel, newSel) -> showStudentDetails(newSel)
        );
    }

    private void showStudentDetails(Student student) {
        if (student == null) {
            detailFirstName.setText("");
            detailLastName.setText("");
            detailClass.setText("");
            detailGroups.setText("");
            detailUsername.setText("");
            return;
        }
        detailFirstName.setText(student.getName());
        detailLastName.setText(student.getSurname());
        int class_id = student.getClass_id();
        Clazz clazz = ClassService.getClazz(class_id).getValue();

        if (clazz != null) {
            detailClass.setText(clazz.getName());
        } else {
            detailClass.setText("-");
        }
        detailUsername.setText(student.getUsername());
        //todo Pobierz/przetwórz grupy przedmiotowe jako String
        //detailGroups.setText(String.join(", ", student.getSubjectGroups()));
    }

    @FXML
    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    @FXML
    public void handleAddStudent() {
        StudentRegistrationDialog dialog = new StudentRegistrationDialog();
        dialog.showAndWait();
        reloadStudents();
    }

    @FXML
    public void handleEditStudent() {
        Student selected = studentsTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        // Wywołaj okno dialogowe lub widok do edycji ucznia
        EditStudentDialog dialog = new EditStudentDialog(selected);
        dialog.showAndWait();
        reloadStudents();
    }

    /*@FXML
    public void handleDeleteStudent() {
        Student selected = studentsTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        // Potwierdzenie
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION, "Czy na pewno usunąć ucznia?");
        alert.showAndWait().ifPresent(response -> {
            if (response == ButtonType.OK) {
                //todo usuwanie ucznia request
                //StudentService.deleteStudent(selected.getId());
                reloadStudents();
            }
        });
    }*/

    @FXML
    public void handleDeleteStudent() {
        Student selected = studentsTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;

        Alert alert = new Alert(Alert.AlertType.CONFIRMATION, "Czy na pewno usunąć ucznia?");
        alert.setTitle("Potwierdzenie");
        alert.setHeaderText(null);

        // Dodanie CSS
        DialogPane dialogPane = alert.getDialogPane();
        dialogPane.getStylesheets().add(getClass().getResource("/css/base.css").toExternalForm());
        dialogPane.getStyleClass().add("custom-alert");

        alert.showAndWait().ifPresent(response -> {
            if (response == ButtonType.OK) {
                // StudentService.deleteStudent(selected.getId());
                reloadStudents();
            }
        });
    }


    @FXML
    public void handleChangeClass() {
        Student selected = studentsTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        ChangeClassDialog dialog = new ChangeClassDialog(selected);
        dialog.showAndWait();
        reloadStudents();
    }

    @FXML
    public void handleAssignToGroup() {
        Student selected = studentsTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        AssignToGroupDialog dialog = new AssignToGroupDialog(selected);
        dialog.showAndWait();
        reloadStudents();
    }

    private void reloadStudents() {
        students = StudentService.getAllStudents().getValue();
        if(students == null) {
            students = new ArrayList<>();
        }
        studentsTable.setItems(FXCollections.observableArrayList(students));
    }
}
