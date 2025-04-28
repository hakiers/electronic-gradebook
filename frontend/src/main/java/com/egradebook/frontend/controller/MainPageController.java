package com.egradebook.frontend.controller;

import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.io.IOException;
import java.util.Objects;

public class MainPageController {
    @FXML
    private VBox root;
    @FXML private Button logoutButton;
    @FXML
    public void initialize() {
        logoutButton.setOnAction(event -> handleLogout());
    }
    @FXML
    public void handleLogout()
    {
        try
        {
            Stage currentStage = (Stage) logoutButton.getScene().getWindow();
            Parent root = FXMLLoader.load(Objects.requireNonNull(getClass().getResource("/fxml/Login.fxml")));
            Scene loginScene = new Scene(root,800,600);
            currentStage.setScene(loginScene);
            currentStage.setTitle("eGradeBook - Logowanie");
            currentStage.centerOnScreen();
        }catch (IOException e) {
            throw new RuntimeException(e);
        }

    }
}
