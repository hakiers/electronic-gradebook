package com.egradebook.frontend.controller.admin;

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
        Stage currentStage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.loadView(currentStage,"/fxml/admin/TeacherRegistration.fxml", "eGradeBook - Dodaj nauczyciela");
    }
}
