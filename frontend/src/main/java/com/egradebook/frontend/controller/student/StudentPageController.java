package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.stage.Stage;
public class StudentPageController {
    @FXML private Button logoutButton;
    @FXML
    public void initialize() {
        logoutButton.setOnAction(event -> handleLogout());
    }
    @FXML
    public void handleLogout()
    {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        UserService.logout();
        ViewLoader.loadView(currentStage, "/fxml/shared/Login.fxml", "eGradeBook - Logowanie");
    }
}
