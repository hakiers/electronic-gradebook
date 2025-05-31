package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.Teacher;
import com.egradebook.frontend.service.AdminService;
import com.egradebook.frontend.service.ClassService;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.collections.ObservableList;
import javafx.collections.FXCollections;
import javafx.stage.Stage;

import java.util.List;

public class ClassManageController {

    @FXML private Button returnButton;
    @FXML private TableView<Clazz> classesTable;
    @FXML private TableColumn<Clazz, Integer> colId;
    @FXML private TableColumn<Clazz, String> colName;
    @FXML private TableColumn<Clazz, String> colYear;
    @FXML private TableColumn<Clazz, String> colProfile;
    @FXML private TableColumn<Clazz, String> colTeacher;
    @FXML private TableColumn<Clazz, Integer> colStudentCount;

    private List<Clazz> classes;

    @FXML
    public void initialize() {
        colId.setCellValueFactory(data ->
                new SimpleIntegerProperty(data.getValue().getClass_id()).asObject()
        );
        colName.setCellValueFactory(data ->
                new SimpleStringProperty(data.getValue().getShort_name())
        );
        colYear.setCellValueFactory(data ->
                new SimpleStringProperty(data.getValue().getClass_year())
        );
        colProfile.setCellValueFactory(data ->
                new SimpleStringProperty(data.getValue().getName())
        );
        colTeacher.setCellValueFactory(data -> {
                    Teacher teacher = TeacherService.getTeacher(data.getValue().getClass_teacher()).getValue();
                    return new SimpleStringProperty(teacher.toString());
                }
        );
        classes = ClassService.getAllClasses().getValue();
        classesTable.setItems(FXCollections.observableArrayList(classes));

        classesTable.getSelectionModel().selectedItemProperty().addListener(
                (obs, oldSel, newSel) ->
                        showClassDetails(newSel)
        );

        colStudentCount.setCellValueFactory(data -> {
            List<Student> students = ClassService.getStudents(data.getValue().getClass_id()).getValue();
            return new SimpleIntegerProperty(students.size()).asObject();
        });
    }

    private void showClassDetails(Clazz clazz) {
        if(clazz == null) {
            //details
        }
        return;
    }

    @FXML
    public void onAddClass() {
        AddClassDialog dialog = new AddClassDialog();
        dialog.showAndWait();
        reloadClasses();
    }

    @FXML
    public void onEditClass() {
        //todo
    }

    @FXML
    public void onDeleteClass() {
        Clazz selected = classesTable.getSelectionModel().getSelectedItem();
        if (selected == null) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Brak wyboru");
            alert.setHeaderText("Nie wybrano klasy do usunięcia");
            alert.setContentText("Proszę zaznaczyć klasę na liście.");
            alert.showAndWait();
            return;
        }

        Alert confirm = new Alert(Alert.AlertType.CONFIRMATION);
        confirm.setTitle("Usuwanie klasy");
        confirm.setHeaderText("Czy na pewno chcesz usunąć klasę: " + selected.getShort_name() + "?");
        confirm.setContentText("Tej operacji nie można cofnąć!");
        confirm.getButtonTypes().setAll(ButtonType.YES, ButtonType.NO);

        confirm.showAndWait().ifPresent(response -> {
            if (response == ButtonType.YES) {
                boolean success = AdminService.deleteClass(selected.getClass_id());
                if (success) {
                    reloadClasses();
                    Alert info = new Alert(Alert.AlertType.INFORMATION, "Klasa została usunięta!");
                    info.setTitle("Sukces");
                    info.showAndWait();
                } else {
                    Alert error = new Alert(Alert.AlertType.ERROR, "Nie udało się usunąć klasy!");
                    error.setTitle("Błąd");
                    error.showAndWait();
                }
            }
        });
    }

    @FXML
    public void onSetSchedule() {
        Clazz selected = classesTable.getSelectionModel().getSelectedItem();
        AddOrEditLessonDialog dialog = new AddOrEditLessonDialog(selected);
        dialog.showAndWait();
        reloadClasses();
    }

    @FXML
    public void onManageProfiles() {
        ProfileManageDialog dialog = new ProfileManageDialog();
        dialog.showAndWait();
        reloadClasses();
    }

    @FXML
    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    private void reloadClasses() {
        classes = ClassService.getAllClasses().getValue();
        classesTable.setItems(FXCollections.observableArrayList(classes));
    }
}
