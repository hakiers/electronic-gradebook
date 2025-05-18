package com.egradebook.frontend.utils;

import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Objects;

public class ViewLoader {
    static String prevPath;
    static String prevTitle;
    private static final Deque<String> pathHistory = new ArrayDeque<>();
    private static final Deque<String> titleHistory = new ArrayDeque<>();
    public static void goPrev(Stage stage) {
        if (!pathHistory.isEmpty() && !titleHistory.isEmpty()) {
            String path = pathHistory.pop();
            String title = titleHistory.pop();
            loadView(stage, path, title);
        }
    }
    public static void loadView(Stage stage, String fxmlPath, String title, int width, int height) {
        try {
            if (stage.getScene() != null) {
                pathHistory.push(prevPath);
                titleHistory.push(prevTitle);
            }
            prevPath = fxmlPath;
            prevTitle = title;
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
