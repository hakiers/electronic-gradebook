package com.egradebook.frontend.controller.shared;

import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.*;
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
            errorLabel.setText("Hasła nie są takie same");
            return;
        }
        ChangeInfo=UserService.changePassword(newPassword);
        if(ChangeInfo.getKey()!=200) {
            successLabel.setVisible(false);
            errorLabel.setVisible(true);
            errorLabel.setText("Nowe hasło jest niepoprawne");
        }
        else {
            errorLabel.setVisible(false);
            successLabel.setVisible(true);
            successLabel.setText("Hasło zmienione");
        }
    }
}
