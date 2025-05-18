package com.egradebook.frontend;

import com.egradebook.frontend.service.ConnectionService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Application;
import javafx.application.Platform;
import javafx.stage.Stage;

import static java.lang.Thread.sleep;

public class Main extends Application {
    @Override
    public void start(Stage stage) throws Exception {
        // Najpierw ładujemy główny widok
        ViewLoader.loadView(stage, "/fxml/shared/Login.fxml", "eGradeBook - Logowanie");
        stage.show();
        Thread checkConnectionThread = new Thread(() -> {
            boolean connectionOk = true;

            while (!Thread.currentThread().isInterrupted()) {
                boolean currentConnectionOk =
                        ConnectionService.ping().getKey() == 200 &&
                                ConnectionService.status().getKey() == 200;

                if (!currentConnectionOk && connectionOk) {
                    Platform.runLater(() -> {
                        ViewLoader.loadView(stage, "/fxml/shared/ErrorScreen.fxml", "Błąd wewnętrzny");
                    });
                } else if (currentConnectionOk && !connectionOk) {
                    Platform.runLater(() -> {
                        ViewLoader.loadView(stage, "/fxml/shared/Login.fxml", "eGradeBook - Logowanie");
                    });
                }

                connectionOk = currentConnectionOk;

                try {
                    Thread.sleep(2000);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    break;
                }
            }
        });

        checkConnectionThread.setDaemon(true);
        checkConnectionThread.start();
    }
    public static void main(String[] args) {
        System.out.println("Aplikacja startuje...");
        launch(args);
    }
}