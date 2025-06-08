package com.egradebook.frontend.controller.admin.manage.teachers;
import com.egradebook.frontend.dto.EditUserPersonalDataRequest;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.Teacher;
import com.egradebook.frontend.service.AdminService;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

public class EditTeacherDialogController {
    @FXML private TextField firstNameField;
    @FXML private TextField lastNameField;
    @FXML private Label statusLabel;

    private Teacher teacher;
    private Stage dialogStage;

    public void setStudent(Teacher s) {
        this.teacher = s;
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
        if (teacher == null)
            return;
        else {
            int user_id = AdminService.getUserIdByTeacherId(teacher.getTeacher_id()).getValue();
            AdminService.editPersonalInfo(user_id, new EditUserPersonalDataRequest(fname, lname));
        }

        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}

