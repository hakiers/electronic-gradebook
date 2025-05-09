package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.model.LoginData;
import com.egradebook.frontend.service.RegisterService;
import com.egradebook.frontend.utils.IntegerField;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import javafx.util.Pair;

import java.net.URL;

public class StudentRegistrationController {
    @FXML private VBox mainContainer;

    //przyciski
    @FXML private Button returnButton;
    @FXML private Button clearButton;
    @FXML private Button submitButton;

    @FXML private ToggleGroup sendTypeGroup;
    @FXML private ToggleButton addButton;
    @FXML private ToggleButton changeButton;

    //pola
    @FXML private TextField nameField;
    @FXML private TextField surnameField;
    @FXML private TextField peselField;
    @FXML private TextField usernameField;
    @FXML private TextField passwordField;
    @FXML private IntegerField class_idField;

    //napisy
    @FXML private Label errorLabel;
    @FXML private Label correctLabel;
    @FXML private Label usernameLabel;
    @FXML private Label passwordLabel;

    private boolean isChangeMode = false;
    public void initialize() {
        hide();
        addButton.setSelected(true);
        returnButton.setOnAction(event -> back());
        clearButton.setOnAction(event -> clear());
        submitButton.setOnAction(event -> handle());
        sendTypeGroup.selectedToggleProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal == null) {
                if (oldVal != null) oldVal.setSelected(true);
                return;
            }
            isChangeMode = (newVal == changeButton);
        });
        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            URL cssUrl = getClass().getResource("/css/styles.css");
            scene.getStylesheets().add(cssUrl.toExternalForm());
        });
    }
    private void handle()
    {
        if(isChangeMode) change();
        else add();
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
        class_idField.clear();
        errorLabel.setText("");
        correctLabel.setText("");
    }
    @FXML
    public void add() {
        String name = nameField.getText();
        String surname = surnameField.getText();
        String pesel = peselField.getText();
        Integer class_id = class_idField.getValue();
        Pair<Integer, LoginData> RegistrationInfo= RegisterService.registerStudent(name,surname,pesel,class_id);
        LoginData loginData = RegistrationInfo.getValue();
        if(RegistrationInfo.getKey()==200){
            clear();
            show();
            usernameField.setText(loginData.getUsername());
            passwordField.setText(loginData.getPassword());
            correctLabel.setVisible(true);
            correctLabel.setText("Pomyślnie dodano ucznia");
        }
        else{
            errorLabel.setVisible(true);
            errorLabel.setText("Dane są niepoprawne, albo uczeń już istnieje");
        }
    }
    public void change() {
        String name = nameField.getText();
        String surname = surnameField.getText();
        String pesel = peselField.getText();
        Integer class_id = class_idField.getValue();
        clear();
        correctLabel.setVisible(true);
        correctLabel.setText("Zmieniono dane ucznia");
        //Pair<Integer,String> RegistrationInfo= RegisterService.registerStudent(name,surname,pesel,class_id);
        //TODO: implement change student data
        //Firstly needs to be in backend
        //System.out.println(RegistrationInfo.getKey());
        //System.out.println(RegistrationInfo.getValue());
        /*if(RegistrationInfo.getKey()==200){
            clear();
            correctLabel.setVisible(true);
            correctLabel.setText("Pomyślnie dodano ucznia");
        }
        else{
            errorLabel.setVisible(true);
            errorLabel.setText("Dane są niepoprawne, albo uczeń już istnieje");
        }*/
    }
    void hide() {
        usernameField.setEditable(false);
        usernameField.setVisible(false);
        usernameLabel.setVisible(false);
        passwordField.setVisible(false);
        passwordField.setEditable(false);
        passwordLabel.setVisible(false);
    }
    void show() {
        usernameField.setVisible(true);
        passwordField.setVisible(true);
        usernameLabel.setVisible(true);
        passwordLabel.setVisible(true);
    }
}
