package com.egradebook.frontend.controller.shared;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import javafx.util.Pair;

public class ChangePasswordController {
    //przyciski
    @FXML Button returnButton;

    //pola
    @FXML PasswordField checkField;
    @FXML PasswordField newPasswordField;
    //napisy
    @FXML Label errorLabel;
    @FXML Label successLabel;

    Pair<Integer,String> ChangeInfo;

    @FXML
    private VBox mainContainer;

    @FXML
    private void initialize() {
        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            scene.getStylesheets().add(getClass().getResource("/css/base.css").toExternalForm());
        });

    }

    @FXML
    public void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
         ViewLoader.goPrev(stage);
    }
    @FXML
    public void handleChange() {
        String check = checkField.getText();
        String newPassword = newPasswordField.getText();
        if(!check.equals(newPassword)) {
            errorLabel.setVisible(true);
            errorLabel.setText("HASŁA NIE SĄ TAKIE SAME");
            return;
        }
        ChangeInfo=UserService.changePassword(newPassword);
        if(ChangeInfo.getKey()!=200) {
            successLabel.setVisible(false);
            errorLabel.setVisible(true);
            errorLabel.setText("NOWE HASŁO JEST NIEPOPRAWNE");
        }
        else {
            errorLabel.setVisible(false);
            successLabel.setVisible(true);
            successLabel.setText("HASŁO ZMIENIONE!");
        }
    }
}
