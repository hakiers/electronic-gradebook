package com.egradebook.frontend.controller;

import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
public class LoginController {
    @FXML
    private TextField usernameField;
    @FXML private PasswordField passwordField;
    @FXML private Button loginButton;
    @FXML private Button clearButton;
    @FXML private Label errorLabel;

    @FXML
    private void initialize() {
        clearButton.setOnAction(event -> clearFields());
        loginButton.setOnAction(event -> handleLogin());
    }
    private void clearFields() {
        usernameField.clear();
        passwordField.clear();
        errorLabel.setText("");
    }
    private void handleLogin() {
        String username = usernameField.getText();
        String password = passwordField.getText();
        //TODO: ADD LOGGING IN
        //login was correct:
        Stage stage=(Stage) loginButton.getScene().getWindow();
        ViewLoader.loadView(stage,"/fxml/MainPage.fxml","Strona główna");
    }
}
