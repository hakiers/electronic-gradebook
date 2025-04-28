package com.egradebook.frontend.utils;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import java.io.IOException;
import java.util.Objects;

public class ViewLoader {
    public static void loadView(Stage stage, String fxmlPath, String title, int width, int height) {
        try {
            Parent root = FXMLLoader.load(Objects.requireNonNull(
                    ViewLoader.class.getResource(fxmlPath)
            ));
            stage.setScene(new Scene(root, width, height));
            stage.setTitle(title);
            stage.centerOnScreen();
        } catch (IOException e) {
            throw new RuntimeException("Failed to load view: " + fxmlPath, e);
        }
    }
    public static void loadView(Stage stage, String fxmlPath, String title) {
        loadView(stage, fxmlPath, title, 800, 600);
    }
}
