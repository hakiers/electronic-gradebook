package com.egradebook.frontend;

import com.egradebook.frontend.service.ConnectionService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Application;
import javafx.stage.Stage;

public class Main extends Application {
    @Override
    public void start(Stage stage) throws Exception {
        if(ConnectionService.ping().getKey()!=200||ConnectionService.status().getKey()!=200)
            ViewLoader.loadView(stage, "/fxml/shared/ErrorScreen.fxml","Błąd wewnętrzny");
        else ViewLoader.loadView(stage, "/fxml/shared/Login.fxml", "eGradeBook - Logowanie");
        stage.show();
    }

    public static void main(String[] args) {
        System.out.println("Aplikacja startuje...");
        launch(args);
    }
}