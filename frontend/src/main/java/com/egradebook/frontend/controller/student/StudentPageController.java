package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.stage.Stage;
public class StudentPageController {
    @FXML private Button logoutButton;
    @FXML private Button showGradesButton;
    @FXML private Button changePasswordButton;
    @FXML private Button showScheduleButton;
    public void initialize() {
        showGradesButton.setOnAction(event -> handleShowGrades());
        logoutButton.setOnAction(event -> handleLogout());
        changePasswordButton.setOnAction(event -> handleChange());
        showScheduleButton.setOnAction(event -> handleShowSchedule());
    }

    private void handleShowSchedule() {
        Stage stage = (Stage) showScheduleButton.getScene().getWindow();
        ViewLoader.loadView(stage,"/fxml/student/StudentSchedule.fxml","Plan Lekcji");
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

    public void handleShowGrades() {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/student/StudentGrades.fxml", "Oceny");
    }

}
