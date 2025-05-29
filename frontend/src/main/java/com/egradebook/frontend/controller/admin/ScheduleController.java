package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.utils.ViewLoader;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.layout.GridPane;
import javafx.stage.Stage;


public class ScheduleController {
    @FXML private Button returnButton;
    @FXML private ComboBox<String> classComboBox;
    @FXML private GridPane scheduleGrid;
    @FXML private Label statusLabel;

    public void initialize() {
        //classComboBox.setItems(FXCollections.observableArrayList(getAllClassNames()));
    }

    @FXML
    private void loadSchedule() {
        String selectedClass = classComboBox.getValue();
        if (selectedClass != null) {
            //displayScheduleForClass(selectedClass);
        }
    }

    @FXML
    private void addLesson() {
    }

    @FXML
    private void deleteLesson() {

    }

    @FXML
    private void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

}
