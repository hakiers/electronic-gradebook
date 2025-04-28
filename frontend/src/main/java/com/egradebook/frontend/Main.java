package com.egradebook.frontend;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

public class Main extends Application {
    @Override
    public void start(Stage stage) throws Exception {
        Parent root = FXMLLoader.load(getClass().getResource("/fxml/Login.fxml"));
        stage.setScene(new Scene(root,800,600));
        //scene.getStylesheets().add(getClass().getResource("/css/styles.css").toExternalForm());
        stage.setTitle("eGradeBook - Logowanie");
        stage.show();
    }

    public static void main(String[] args) {
        System.out.println("Aplikacja startuje...");
        launch(args);
    }
}