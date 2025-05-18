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

    //przyciski
    @FXML private Button returnButton;
    @FXML private Button clearButton;
    @FXML private Button submitButton;

    //pola
    @FXML private TextField nameField;
    @FXML private TextField surnameField;
    @FXML private TextField peselField;
    @FXML private TextField usernameField;
    @FXML private TextField passwordField;
    @FXML private CheckComboBox<String> subjectsCheckComboBox;

    //napisy
    @FXML private Label errorLabel;
    @FXML private Label correctLabel;
    @FXML private Label usernameLabel;
    @FXML private Label passwordLabel;

    public void initialize() {
        hide();
        clearButton.setOnAction(event -> clear());
        submitButton.setOnAction(event -> add());
        subjectsCheckComboBox.getItems().addAll(
                "Matematyka","Informatyka"/*, "Fizyka", "Chemia", "Biologia",
                 "Geografia", "Historia","Angielski","Polski","WF"*/
        );
    }

    @FXML
    public void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
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
            clear();
            errorLabel.setVisible(true);
            errorLabel.setText("Dane są niepoprawne, albo nauczyciel już istnieje");
        }
    }
    @FXML
    void hide() {
        usernameField.setVisible(false);
        usernameField.setEditable(false);
        passwordField.setVisible(false);
        passwordField.setEditable(false);
        usernameLabel.setVisible(false);
        passwordLabel.setVisible(false);
    }
    @FXML
    void show() {
        usernameField.setVisible(true);
        passwordField.setVisible(true);
        usernameLabel.setVisible(true);
        passwordLabel.setVisible(true);
    }
}
