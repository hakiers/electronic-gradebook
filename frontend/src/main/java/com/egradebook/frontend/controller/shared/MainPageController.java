package com.egradebook.frontend.controller.shared;

import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.layout.VBox;

public class MainPageController {

    @FXML
    private VBox mainContainer;

    @FXML
    private void initialize() {
        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            scene.getStylesheets().add(getClass().getResource("/css/base.css").toExternalForm());
        });

    }

}
