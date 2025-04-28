package com.egradebook.frontend.controller;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.stage.Stage;

import java.io.IOException;

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
        try
        {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/MainPage.fxml"));
            Parent root=loader.load();
            Stage stage=(Stage) loginButton.getScene().getWindow();
            stage.setScene(new Scene(root));
            stage.setTitle("MainPage");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
