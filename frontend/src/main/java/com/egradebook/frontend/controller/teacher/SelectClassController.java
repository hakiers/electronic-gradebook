package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Group;
import com.egradebook.frontend.model.Subject;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.Triple;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.stage.Stage;
import javafx.util.Pair;
import javafx.util.StringConverter;

import java.util.List;

public class SelectClassController {

    //buttons
    @FXML private Button returnButton;

    //combobox
    @FXML private ComboBox<Triple> selectBox;

    public void initialize() {
        TeacherService.selectedClassId=-1;
        List<Triple<Clazz, Subject, Group>> classes= TeacherService.getClassSubjects().getValue();
        selectBox.getItems().addAll(classes);
    }
    public void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    public void handleGrades() {

        Stage stage=(Stage) returnButton.getScene().getWindow();
        if(selectBox.getSelectionModel().getSelectedItem()!=null) {
            Clazz selectedCl=(Clazz)selectBox.getValue().getFirst();
            TeacherService.selectedClassId=selectedCl.getClass_id();
            Subject selectedSub=(Subject)selectBox.getValue().getSecond();
            TeacherService.selectedSubjectId=selectedSub.getSubjectId();
            Group selectedGroup=(Group)selectBox.getValue().getThird();
            TeacherService.selectedGroupId=selectedGroup.getGroup_id();
            ViewLoader.loadView(stage,"/fxml/teacher/TeacherGrades.fxml", "Oceny");
        }

    }
    public void handleAttendance() {

        Stage stage=(Stage) returnButton.getScene().getWindow();
        if(selectBox.getValue()!=null) {
            Clazz selectedCl=(Clazz)selectBox.getValue().getFirst();
            TeacherService.selectedClassId=selectedCl.getClass_id();
            Subject selectedSub=(Subject)selectBox.getValue().getSecond();
            TeacherService.selectedSubjectId=selectedSub.getSubjectId();
            Group selectedGroup=(Group)selectBox.getValue().getThird();
            TeacherService.selectedGroupId=selectedGroup.getGroup_id();
            ViewLoader.loadView(stage,"/fxml/teacher/TeacherAttendance.fxml", "Obecność");
        }
    }

}
