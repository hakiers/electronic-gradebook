package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.dto.EditUserPersonalDataRequest;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.service.AdminService;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

public class EditStudentDialogController {
    @FXML private TextField firstNameField;
    @FXML private TextField lastNameField;
    @FXML private Label statusLabel;

    private Student student;
    private Stage dialogStage;

    public void setStudent(Student s) {
        this.student = s;
        if (s != null) {
            firstNameField.setText(s.getName());
            lastNameField.setText(s.getSurname());
        }
    }

    public void setDialogStage(Stage s) {
        this.dialogStage = s;
    }

    @FXML
    public void save() {
        String fname = firstNameField.getText();
        String lname = lastNameField.getText();

        if (fname.isEmpty() || lname.isEmpty()) {
            statusLabel.setText("Uzupełnij wszystkie pola!");
            return;
        }
        if (student == null)
            return;
        else {
            int user_id = AdminService.getUserIdByStudentId(student.getStudent_id()).getValue();
            AdminService.editPersonalInfo(user_id, new EditUserPersonalDataRequest(fname, lname));
        }

        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
