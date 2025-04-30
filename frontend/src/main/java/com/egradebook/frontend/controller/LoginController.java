package com.egradebook.frontend.controller;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.animation.PauseTransition;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import javafx.util.Duration;
import javafx.util.Pair;

public class LoginController {
    @FXML private TextField usernameField;
    @FXML private PasswordField passwordField;
    @FXML private Button loginButton;
    @FXML private Button clearButton;
    @FXML private Label errorLabel;

    @FXML
    private void initialize() {
        clearButton.setOnAction(event -> clearFields());
        loginButton.setOnAction(event -> {
            try {
                handleLogin();
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        });
    }
    private void clearFields() {
        usernameField.clear();
        passwordField.clear();
        errorLabel.setText("");
    }
    private void handleLogin() throws InterruptedException {
        Stage stage=(Stage) loginButton.getScene().getWindow();
        String username = usernameField.getText();
        String password = passwordField.getText();
        Pair<Integer,String> LoginInfo=UserService.login(username, password);
        if(LoginInfo.getKey()==200){
           if(LoginInfo.getValue().equals("admin")) {
               ViewLoader.loadView(stage,"/fxml/MainPage.fxml","Strona główna");
               PauseTransition delay = new PauseTransition(Duration.seconds(1));
               delay.setOnFinished(event -> {
                   ViewLoader.loadView(stage, "/fxml/AdminPage.fxml", "Strona Główna");
               });
               delay.play();
           }
           else if(LoginInfo.getValue().equals("student")) {
               ViewLoader.loadView(stage,"/fxml/MainPage.fxml","Strona główna");
               PauseTransition delay = new PauseTransition(Duration.seconds(1));
               delay.setOnFinished(event -> {
                   ViewLoader.loadView(stage, "/fxml/StudentPage.fxml", "Strona Główna");
               });
               delay.play();
           }
        }
        else {
            errorLabel.setText("Niepoprawny login lub hasło");
            errorLabel.setVisible(true);
        }
    }
}
