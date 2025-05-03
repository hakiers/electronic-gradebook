package com.egradebook.frontend.controller.student;

import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.service.UserService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.geometry.Pos;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

import java.util.Arrays;
import java.util.List;

public class StudentGradesController {
    @FXML private TableView<Grade> gradesTable;
    @FXML private TableColumn<Grade, String> subjectColumn;
    @FXML private TableColumn<Grade, Integer> gradeColumn;
    @FXML private TableColumn<Grade, String> dateColumn;
    @FXML private TableColumn<Grade, String> teacherColumn;

    @FXML
    public void initialize() {

    }


}