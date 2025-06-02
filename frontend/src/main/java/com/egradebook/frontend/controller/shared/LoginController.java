package com.egradebook.frontend.controller.shared;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.animation.PauseTransition;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import javafx.util.Duration;
import javafx.util.Pair;

import java.net.URL;

public class LoginController {
    @FXML
    private VBox mainContainer;

    //przyciski
    @FXML private Button loginButton;

    @FXML private ToggleGroup loginTypeGroup;
    @FXML private ToggleButton asStudentButton;
    @FXML private ToggleButton asWorkerButton;

    //pola
    @FXML private TextField usernameField;
    @FXML private PasswordField passwordField;


    //napisy
    @FXML private Label errorLabel;

    Stage stage;
    String username;
    String password;
    Pair<Integer,String> LoginInfo;
    private boolean isWorkerMode = false;

    @FXML
    private void initialize() {
        asStudentButton.setSelected(true);
        loginTypeGroup.selectedToggleProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal == null) {
                if (oldVal != null) oldVal.setSelected(true);
                return;
            }
            isWorkerMode = (newVal == asWorkerButton);
        });
        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            URL cssUrl = getClass().getResource("/css/base.css");
            scene.getStylesheets().add(cssUrl.toExternalForm());
        });
    }

    @FXML
    private void clearFields() {
        usernameField.clear();
        passwordField.clear();
        errorLabel.setText("");
    }

    @FXML
    private void handleLogin(){
        if(isWorkerMode) handleWorkerLogin();
        else handleStudentLogin();
    }

    private void handleStudentLogin(){
        collect();
        if(LoginInfo.getKey()==200){
           if(LoginInfo.getValue().equals("student")) {
               ViewLoader.loadView(stage, "/fxml/shared/MainPage.fxml","Strona główna");
               PauseTransition delay = new PauseTransition(Duration.seconds(1));
               delay.setOnFinished(event -> ViewLoader.loadView(stage, "/fxml/student/StudentPage.fxml", "Strona Główna"));
               delay.play();
           }
           else {
               errorLabel.setText("Niepoprawny login lub hasło");
               errorLabel.setVisible(true);
           }
        }
        else {
            errorLabel.setText("Niepoprawny login lub hasło");
            errorLabel.setVisible(true);
        }
    }

    private void handleWorkerLogin(){
        collect();
        if(LoginInfo.getKey()==200){
            if(LoginInfo.getValue().equals("admin")) {
                ViewLoader.loadView(stage, "/fxml/shared/MainPage.fxml","Strona główna");
                PauseTransition delay = new PauseTransition(Duration.seconds(1));
                delay.setOnFinished(event ->
                    ViewLoader.loadView(stage, "/fxml/admin/AdminPage.fxml", "Strona Główna"));
                delay.play();
            }
            else{
                ViewLoader.loadView(stage, "/fxml/shared/MainPage.fxml","Strona główna");
                PauseTransition delay = new PauseTransition(Duration.seconds(1));
                delay.setOnFinished(event ->
                        ViewLoader.loadView(stage, "/fxml/teacher/TeacherPage.fxml", "Strona Główna"));
                delay.play();
            }
        }
        //dodaj konto nauczyciela
        else {
            errorLabel.setText("Niepoprawny login lub hasło");
            errorLabel.setVisible(true);
        }
    }

    private void collect() {
        stage=(Stage) loginButton.getScene().getWindow();
        username = usernameField.getText();
        password = passwordField.getText();
        LoginInfo=UserService.login(username, password);
    }
}