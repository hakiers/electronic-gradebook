package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.stage.Stage;
public class StudentPageController {
    @FXML private Button logoutButton;
    @FXML private Button changePasswordButton;
    @FXML
    public void initialize() {
        System.out.println(StudentService.getStudentGrades().getValue().gradesBySubject.toString());
        logoutButton.setOnAction(event -> handleLogout());
        changePasswordButton.setOnAction(event -> handleChange());
    }
    @FXML
    public void handleChange()
    {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        ViewLoader.loadView(currentStage,"/fxml/shared/ChangePassword.fxml","Zmiana hasła");
    }
    @FXML
    public void handleLogout()
    {
        Stage currentStage = (Stage) logoutButton.getScene().getWindow();
        UserService.logout();
        ViewLoader.loadView(currentStage, "/fxml/shared/Login.fxml", "eGradeBook - Logowanie");
    }
}
