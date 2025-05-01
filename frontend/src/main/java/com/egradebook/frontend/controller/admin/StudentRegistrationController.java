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
    @FXML private Button addButton;
    @FXML private Button changeButton;
    @FXML private TextField nameField;
    @FXML private TextField surnameField;
    @FXML private TextField peselField;
    @FXML private IntegerField class_idField;
    @FXML private Label errorLabel;
    @FXML private Label correctLabel;
    @FXML private Button submitButton;
    public void initialize() {
        returnButton.setOnAction(event -> back());
        clearButton.setOnAction(event -> clear());
        submitButton.setOnAction(event -> add());
        addButton.setOnAction(event -> setAdd());
        changeButton.setOnAction(event -> setChange());
    }
    @FXML
    public void setAdd() {
        submitButton.setOnAction(event -> add());
        submitButton.setText("Dodaj");
    }
    @FXML
    public void setChange() {
        submitButton.setOnAction(event -> change());
        submitButton.setText("Zmień");
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
        correctLabel.setText("");
    }
    @FXML
    public void add() {
        String name = nameField.getText();
        String surname = surnameField.getText();
        String pesel = peselField.getText();
        Integer class_id = class_idField.getValue();
        Pair<Integer,String> RegistrationInfo= RegisterService.registerStudent(name,surname,pesel,class_id);
        System.out.println(RegistrationInfo.getKey());
        System.out.println(RegistrationInfo.getValue());
        if(RegistrationInfo.getKey()==200){
            clear();
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
}
