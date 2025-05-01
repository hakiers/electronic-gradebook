package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.service.RegisterService;
import com.egradebook.frontend.utils.IntegerField;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.stage.Stage;
import javafx.util.Pair;

public class StudentRegistrationController {
    @FXML private Button returnButton;
    @FXML private Button clearButton;
    @FXML private TextField nameField;
    @FXML private TextField surnameField;
    @FXML private TextField peselField;
    @FXML private IntegerField class_idField;
    @FXML private Label errorLabel;
    @FXML private Button submitButton;
    public void initialize() {
        returnButton.setOnAction(event -> back());
        clearButton.setOnAction(event -> clear());
        submitButton.setOnAction(event -> send());
    }
    @FXML
    public void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.loadView(stage, "/fxml/admin/AdminPage.fxml", "Strona Główna");
    }
    @FXML
    public void clear() {
        nameField.clear();
        surnameField.clear();
        peselField.clear();
        class_idField.clear();
        errorLabel.setText("");
    }
    @FXML
    public void send() {
        String name = nameField.getText();
        String surname = surnameField.getText();
        String pesel = peselField.getText();
        Integer class_id = class_idField.getValue();
        Pair<Integer,String> RegistrationInfo= RegisterService.registerStudent(name,surname,pesel,class_id);
        System.out.println(RegistrationInfo.getKey());
        System.out.println(RegistrationInfo.getValue());
    }
}
