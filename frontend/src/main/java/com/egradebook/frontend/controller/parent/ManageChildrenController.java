package com.egradebook.frontend.controller.parent;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Group;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.Subject;
import com.egradebook.frontend.service.ParentService;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.Triple;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.stage.Stage;

import java.util.List;

public class ManageChildrenController {
    //buttons
    @FXML
    private Button returnButton;

    //combobox
    @FXML private ComboBox<Student> selectBox;

    public void initialize() {
        TeacherService.selectedClassId=-1;
        List<Student> students= ParentService.getAllChildren().getValue();
        selectBox.getItems().addAll(students);
    }
    public void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    public void handleGrades() {

        Stage stage=(Stage) returnButton.getScene().getWindow();
        if(selectBox.getSelectionModel().getSelectedItem()!=null) {
            ParentService.selectedStudent=selectBox.getValue();
            ViewLoader.loadView(stage,"/fxml/parent/ChildrenGrades.fxml", "Oceny");
        }

    }
    public void handleAttendance() {

        Stage stage=(Stage) returnButton.getScene().getWindow();
        if(selectBox.getValue()!=null) {
            ParentService.selectedStudent=selectBox.getValue();
            ViewLoader.loadView(stage,"/fxml/parent/ChildAttendance.fxml", "Frekwencja");
        }
    }
    public void handleSchedule() {

        Stage stage=(Stage) returnButton.getScene().getWindow();
        if(selectBox.getValue()!=null) {
            ParentService.selectedStudent=selectBox.getValue();
            ViewLoader.loadView(stage,"/fxml/parent/ChildSchedule.fxml", "Plan");
        }
    }
}
