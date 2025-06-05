package com.egradebook.frontend.controller.admin.manage.teachers;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Group;
import com.egradebook.frontend.model.Subject;
import com.egradebook.frontend.model.Teacher;
import com.egradebook.frontend.service.AdminService;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.Triple;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.SimpleListProperty;
import javafx.beans.property.SimpleObjectProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.util.ArrayList;
import java.util.List;

public class TeacherManageController {
    @FXML private Button returnButton;
    @FXML private TableView<Teacher> teachersTable;
    @FXML private TableColumn<Teacher, String> colFirstName;
    @FXML private TableColumn<Teacher, String> colLastName;
    @FXML private TableColumn<Teacher, String> colSubject;

    @FXML private Label detailFirstName;
    @FXML private Label detailLastName;
    @FXML private Label detailSubject;
    @FXML private Label detailClass;
    @FXML private Label detailUsername;
    @FXML private Label detailEmail;
    @FXML private Label detailPhone;
    @FXML private Label detailAddress;
    @FXML private Label pesel;

    private List<Teacher> teachers;

    @FXML
    public void initialize() {
        colFirstName.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getName()));
        colLastName.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getSurname()));
        colSubject.setCellValueFactory(data -> {
            List<Subject> subjects = TeacherService.getTeacherSubjects(data.getValue().getTeacher_id()).getValue();
            return new SimpleListProperty((ObservableList) subjects);

        });

        colSubject.setCellValueFactory(data -> {
            List<Subject> subjects = TeacherService.getTeacherSubjects(data.getValue().getTeacher_id()).getValue();
            // Zamieniamy na listę nazw przedmiotów:
            String names = "";
            if(subjects != null && !subjects.isEmpty()) {
                names = subjects.stream().map(Subject::getName).reduce((a,b) -> a + ", " + b).orElse("");
            }
            return new SimpleStringProperty(names);
        });

        teachers = AdminService.getAllTeachers().getValue();
        if (teachers == null) teachers = new ArrayList<>();

        teachersTable.setItems(FXCollections.observableArrayList(teachers));

        teachersTable.getSelectionModel().selectedItemProperty().addListener(
                (obs, oldSel, newSel) -> showTeacherDetails(newSel)
        );
    }

    private void showTeacherDetails(Teacher teacher) {
        if (teacher == null) {
            detailFirstName.setText("");
            detailLastName.setText("");
            detailSubject.setText("");
            detailClass.setText("");
            detailUsername.setText("");
            return;
        }
        detailFirstName.setText(teacher.getName());
        detailLastName.setText(teacher.getSurname());
        detailUsername.setText(teacher.getUsername());
        // 1. Przedmioty
        List<Subject> subjects = TeacherService.getTeacherSubjects(teacher.getTeacher_id()).getValue();
        if (subjects != null && !subjects.isEmpty()) {
            String subjectNames = subjects.stream()
                    .map(Subject::getName)
                    .reduce((a, b) -> a + ", " + b)
                    .orElse("");
            detailSubject.setText(subjectNames);
        } else {
            detailSubject.setText("-");
        }

        // 2. Klasy/przedmioty/grupy (Triple<Clazz, Subject, Group>)
        List<Triple<Clazz, Subject, Group>> clazz = TeacherService.getClassSubjects(teacher.getTeacher_id()).getValue();
        if (clazz != null && !clazz.isEmpty()) {
            // Możesz wyświetlić np. nazwy klas z przedmiotami i grupami:
            StringBuilder classesBuilder = new StringBuilder();
            for (Triple<Clazz, Subject, Group> triple : clazz) {
                String className = triple.getFirst().getShort_name(); // albo getName(), jak wolisz
                String subjectName = triple.getSecond().getName();
                String groupName = triple.getThird() != null ? String.valueOf(triple.getThird().getGroup_number()) : "";
                // Dodajemy całość w formacie: "klasa (przedmiot, grupa)"
                classesBuilder.append(className)
                        .append(" (")
                        .append(subjectName);
                if (!groupName.isEmpty()) {
                    classesBuilder.append(", ").append(groupName);
                }
                classesBuilder.append("), ");
            }
            // Usuń przecinek z końca
            if (classesBuilder.length() > 2) {
                classesBuilder.setLength(classesBuilder.length() - 2);
            }
            detailClass.setText(classesBuilder.toString());
        } else {
            detailClass.setText("-");
        }
    }


    @FXML
    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    @FXML
    public void handleAddTeacher() {
        TeacherRegistrationDialog dialog = new TeacherRegistrationDialog();
        dialog.showAndWait();
        reloadTeachers();
    }

    @FXML
    public void handleEditTeacher() {
        Teacher selected = teachersTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        //todo
        //EditTeacherDialog dialog = new EditTeacherDialog(selected);
        //dialog.showAndWait();
        reloadTeachers();
    }

    @FXML
    public void handleDeleteTeacher() {
        Teacher selected = teachersTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION, "Czy na pewno usunąć nauczyciela?");
        alert.showAndWait().ifPresent(response -> {
            if (response == ButtonType.OK) {
                //TeacherService.deleteTeacher(selected.getId());
                reloadTeachers();
            }
        });
    }

    @FXML
    public void handleChangeSubject() {
        Teacher selected = teachersTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        //todo
        //ChangeSubjectDialog dialog = new ChangeSubjectDialog(selected);
        //dialog.showAndWait();
        reloadTeachers();
    }

    private void reloadTeachers() {
        teachers = AdminService.getAllTeachers().getValue();
        if (teachers == null) {
            teachers = new ArrayList<>();
        }
        teachersTable.setItems(FXCollections.observableArrayList(teachers));
    }
}
