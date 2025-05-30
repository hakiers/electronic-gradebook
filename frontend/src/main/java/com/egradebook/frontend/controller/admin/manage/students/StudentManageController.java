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

import java.util.List;

public class StudentManageController {
    @FXML private Button returnButton;
    @FXML private TableView<Student> studentsTable;
    @FXML private TableColumn<Student, String> colFirstName;
    @FXML private TableColumn<Student, String> colLastName;
    @FXML private TableColumn<Clazz, String> colClass;

    @FXML private Label detailFirstName;
    @FXML private Label detailLastName;
    @FXML private Label detailClass;
    @FXML private Label detailGroups;

    private List<Student> students;

    @FXML
    public void initialize() {
        colFirstName.setCellValueFactory(data->  new SimpleStringProperty(data.getValue().getName()));
        colLastName.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getSurname()));
        colClass.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getShort_name()));

        students = StudentService.getAllStudents().getValue();
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
            return;
        }
        detailFirstName.setText(student.getName());
        detailLastName.setText(student.getSurname());
        int class_id = student.getClass_id();
        Clazz clazz = ClassService.getClazz(class_id).getValue();
        detailClass.setText(clazz.getName());
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
        Stage currentStage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/admin/StudentRegistration.fxml", "eGradeBook - Dodaj ucznia");
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

    @FXML
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
        studentsTable.setItems(FXCollections.observableArrayList(students));
    }
}
