package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.stage.Stage;
public class AdminPageController {

    //przyciski
    @FXML private Button logoutButton;

    public void handleChange() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage,"/fxml/shared/ChangePassword.fxml","Zmiana hasła");
    }

    public void handleLogout() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        UserService.logout();
        ViewLoader.loadView(currentStage, "/fxml/shared/Login.fxml", "eGradeBook - Logowanie");
    }

    public void handleAddStudent() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/admin/StudentRegistration.fxml", "eGradeBook - Dodaj ucznia");
    }

    public void handleAddTeacher() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage,"/fxml/admin/TeacherRegistration.fxml", "eGradeBook - Dodaj nauczyciela");
    }
}
