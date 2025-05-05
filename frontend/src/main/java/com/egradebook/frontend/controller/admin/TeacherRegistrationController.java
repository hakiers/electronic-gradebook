package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.model.LoginData;
import com.egradebook.frontend.service.RegisterService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import javafx.util.Pair;
import org.controlsfx.control.CheckComboBox;

import java.util.List;

public class TeacherRegistrationController {
    @FXML private Button returnButton;
    @FXML private Button clearButton;
    @FXML private Button submitButton;
    @FXML private TextField nameField;
    @FXML private TextField surnameField;
    @FXML private TextField peselField;
    @FXML private Label errorLabel;
    @FXML private Label correctLabel;
    @FXML private CheckComboBox<String> subjectsCheckComboBox;
    @FXML private Label usernameLabel;
    @FXML private Label passwordLabel;
    @FXML private TextField usernameField;
    @FXML private TextField passwordField;
    public void initialize() {
        hide();
        returnButton.setOnAction(event -> back());
        clearButton.setOnAction(event -> clear());
        submitButton.setOnAction(event -> add());
        subjectsCheckComboBox.getItems().addAll(
                "Matematyka", "Fizyka", "Chemia", "Biologia",
                "Informatyka", "Język polski", "Historia"
        );
    }

    @FXML
    public void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.loadView(stage, "/fxml/admin/AdminPage.fxml", "Strona Główna");
    }
    @FXML
    public void clear() {
        hide();
        nameField.clear();
        surnameField.clear();
        peselField.clear();
        subjectsCheckComboBox.getCheckModel().clearChecks();

        errorLabel.setText("");
        correctLabel.setText("");
    }
    @FXML
    public void add() {
        String name = nameField.getText();
        String surname = surnameField.getText();
        String pesel = peselField.getText();
        List<String > subjects = subjectsCheckComboBox.getCheckModel().getCheckedItems();
        Pair<Integer, LoginData> RegistrationInfo= RegisterService.registerTeacher(name,surname,pesel,subjects);
        LoginData loginData=RegistrationInfo.getValue();
        if(RegistrationInfo.getKey()==200){
            clear();
            show();
            usernameField.setText(loginData.getUsername());
            passwordField.setText(loginData.getPassword());
            correctLabel.setVisible(true);
            correctLabel.setText("Pomyślnie dodano nauczyciela");
        }
        else{
            errorLabel.setVisible(true);
            errorLabel.setText("Dane są niepoprawne, albo nauczyciel już istnieje");
        }
    }
    void hide() {
        usernameField.setVisible(false);
        usernameField.setEditable(false);
        passwordField.setVisible(false);
        passwordField.setEditable(false);
        usernameLabel.setVisible(false);
        passwordLabel.setVisible(false);
    }
    void show() {
        usernameField.setVisible(true);
        passwordField.setVisible(true);
        usernameLabel.setVisible(true);
        passwordLabel.setVisible(true);
    }
}
