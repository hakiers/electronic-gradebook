package com.egradebook.frontend.controller;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;

public class LoginController {
    @FXML
    private TextField username;
    @FXML private PasswordField password;
    @FXML private Button loginButton;
    @FXML private Button clearButton;
    @FXML private Label errorLabel;
    @FXML
    private void initialize() {
        clearButton.setOnAction(event -> clearFields());
        loginButton.setOnAction(event -> handleLogin());
    }
    private void clearFields() {
        username.clear();
        password.clear();
        errorLabel.setText("");
    }
    private void handleLogin() {

    }
}
