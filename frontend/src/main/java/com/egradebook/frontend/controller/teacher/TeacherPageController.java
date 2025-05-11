package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.stage.Stage;
public class TeacherPageController {
    @FXML private Button logoutButton;
    @FXML private Button manageClassButton;
    @FXML private Button changePasswordButton;

    public void initialize() {
        manageClassButton.setOnAction(event -> handleManageClass());
        logoutButton.setOnAction(event -> handleLogout());
        changePasswordButton.setOnAction(event -> handleChange());
    }

    public void handleChange() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage,"/fxml/shared/ChangePassword.fxml","Zmiana hasła");
    }

    public void handleLogout() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        UserService.logout();
        ViewLoader.loadView(currentStage, "/fxml/shared/Login.fxml", "eGradeBook - Logowanie");
    }

    public void handleManageClass() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/teacher/SelectClass.fxml", "Wybór klasy");
    }
}
