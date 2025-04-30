package com.egradebook.frontend;

import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {
    @Override
    public void start(Stage stage) {
        ViewLoader.loadView(stage,"/fxml/Login.fxml", "eGradeBook - Logowanie");
        stage.show();
    }

    public static void main(String[] args) {
        System.out.println("Aplikacja startuje...");
        launch(args);
    }
}