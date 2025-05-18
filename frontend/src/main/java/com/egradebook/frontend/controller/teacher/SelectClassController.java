package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.stage.Stage;
import javafx.util.Pair;
import javafx.util.StringConverter;

public class SelectClassController {

    //buttons
    @FXML private Button returnButton;
    @FXML private Button nextButton;

    //combobox
    @FXML private ComboBox<Pair<String ,String>> selectBox;

    public void initialize() {
        nextButton.setOnAction(event -> next());
        //TODO ADD LOGIC
        selectBox.getItems().addAll(new Pair<>("1A", "Matematyka"),new Pair<>("1A","Informatyka"),
                new Pair<>("2B","Informatyka"));
        selectBox.setConverter(new StringConverter<>() {
            @Override
            public String toString(Pair<String, String> pair) {
                if (pair == null) return "";
                return pair.getKey() + " " + pair.getValue();
            }

            @Override
            public Pair<String, String> fromString(String string) {
                return null;
            }
        });
    }
    public void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    public void next() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.loadView(stage,"/fxml/teacher/TeacherGrades.fxml", "Oceny");
    }
}
