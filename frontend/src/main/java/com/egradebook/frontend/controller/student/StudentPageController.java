package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.stage.Stage;
public class StudentPageController {
    @FXML private Button logoutButton;
    @FXML
    private void handleShowSchedule() {
        Stage stage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(stage,"/fxml/student/StudentSchedule.fxml","Plan Lekcji");
    }
    @FXML
    public void handleChange() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage,"/fxml/shared/ChangePassword.fxml","Zmiana hasła");
    }
    @FXML
    public void handleLogout() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        UserService.logout();
        ViewLoader.loadView(currentStage, "/fxml/shared/Login.fxml", "eGradeBook - Logowanie");
    }
    @FXML
    public void handleShowGrades() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/student/StudentGrades.fxml", "Oceny");
    }
    @FXML
    public void handleShowAttendance() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/student/StudentAttendance.fxml", "Obecność");
    }
}
