package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.service.ClassService;
import com.egradebook.frontend.service.StudentService;
import javafx.fxml.FXML;
import javafx.scene.control.ComboBox;
import javafx.stage.Stage;

public class ChangeClassDialogController {
    @FXML private ComboBox<Clazz> classComboBox;

    private Student student;
    private Stage dialogStage;

    public void setStudent(Student s) { this.student = s; }
    public void setDialogStage(Stage s) { this.dialogStage = s; }

    @FXML
    public void initialize() {
        // Tu można dodać dynamicznie klasy z serwisu:
        classComboBox.getItems().addAll(ClassService.getAllClasses().getValue());
        if (student != null) {
            Clazz clazz = ClassService.getClazz(student.getClass_id()).getValue();
            classComboBox.setValue(clazz);
        }
    }

    @FXML
    public void save() {
        Clazz newClass = classComboBox.getValue();
        if (newClass == null) return;
        //todo wylasc request do bazy zmieniajacy klase ucznia
        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
