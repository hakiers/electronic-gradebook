package com.example.egradebook.controller;
import javafx.fxml.FXML;
import javafx.scene.control.*;
public class LoginController {
  @FXML TextField usernameField;
  @FXML PasswordField passwordField;
  @FXML Button loginButton;
  @FXML void onLogin() {
    // TODO: POST /api/auth/login, jeśli "OK" → załaduj Dashboard.fxml
  }
}
