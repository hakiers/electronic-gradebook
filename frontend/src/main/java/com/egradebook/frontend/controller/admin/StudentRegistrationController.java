package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.LoginData;
import com.egradebook.frontend.service.ClassService;
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
import java.util.List;

public class StudentRegistrationController {
    @FXML private VBox mainContainer;

    //przyciski
    @FXML private Button returnButton;
    @FXML private ToggleGroup sendTypeGroup;
    @FXML private ToggleButton addButton;
    @FXML private ToggleButton changeButton;

    //pola
    @FXML private TextField nameField;
    @FXML private TextField surnameField;
    @FXML private TextField peselField;
    @FXML private TextField usernameField;
    @FXML private TextField passwordField;
    @FXML private ComboBox<Clazz> class_idBox;

    //napisy
    @FXML private Label errorLabel;
    @FXML private Label correctLabel;
    @FXML private Label usernameLabel;
    @FXML private Label passwordLabel;

    private boolean isChangeMode = false;

    public void initialize() {
        hide();
        addButton.setSelected(true);
        sendTypeGroup.selectedToggleProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal == null) {
                if (oldVal != null) oldVal.setSelected(true);
                return;
            }
            isChangeMode = (newVal == changeButton);
        });
        List<Clazz> classes= ClassService.getAllClasses().getValue();
        class_idBox.getItems().addAll(classes);
        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            URL cssUrl = getClass().getResource("/css/styles.css");
            scene.getStylesheets().add(cssUrl.toExternalForm());
        });
    }
    @FXML
    private void handle()
    {
        if(isChangeMode) change();
        else add();
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
        class_idBox.setValue(null);
        errorLabel.setText("");
        correctLabel.setText("");
    }
    @FXML
    public void add() {
        String name = nameField.getText();
        String surname = surnameField.getText();
        String pesel = peselField.getText();
        Integer class_id = class_idBox.getValue().getClass_id();
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
        //Integer class_id = class_idField.getValue();
        clear();
        correctLabel.setVisible(true);
        correctLabel.setText("Zmieniono dane ucznia");
        //TODO: implement change student data
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
