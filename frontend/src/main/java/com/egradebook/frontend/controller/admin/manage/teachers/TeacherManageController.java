package com.egradebook.frontend.controller.admin.manage.teachers;

import com.egradebook.frontend.controller.admin.manage.students.ChangeClassDialog;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.stage.Stage;

public class TeacherManageController {
    @FXML private Button returnButton;

    @FXML
    public void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    public void handleAddTeacher() {
        TeacherRegistrationDialog dialog = new TeacherRegistrationDialog();
        dialog.showAndWait();
        //reload teachers
    }
}
