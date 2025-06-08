package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.request.ChangeClassRequest;
import com.egradebook.frontend.service.AdminService;
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
        AdminService.changeStudentClass(new ChangeClassRequest(student.getStudent_id(), newClass.getClass_id()));
        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
