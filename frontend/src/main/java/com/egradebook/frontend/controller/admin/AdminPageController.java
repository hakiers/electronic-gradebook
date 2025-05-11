package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.stage.Stage;
public class AdminPageController {

    //przyciski
    @FXML private Button addStudentButton;
    @FXML private Button logoutButton;
    @FXML private Button changePasswordButton;
    @FXML private Button addTeacherButton;

    public void initialize() {
        logoutButton.setOnAction(event -> handleLogout());
        addStudentButton.setOnAction(event -> handleAddStudent());
        addTeacherButton.setOnAction(event -> handleAddTeacher());
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

    public void handleAddStudent() {
        Stage currentStage = (Stage) addStudentButton.getScene().getWindow();
        ViewLoader.loadView(currentStage, "/fxml/admin/StudentRegistration.fxml", "eGradeBook - Dodaj ucznia");
    }

    public void handleAddTeacher() {
        Stage currentStage = (Stage) addStudentButton.getScene().getWindow();
        ViewLoader.loadView(currentStage,"/fxml/admin/TeacherRegistration.fxml", "eGradeBook - Dodaj nauczyciela");
    }
}
