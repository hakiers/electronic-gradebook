package com.egradebook.frontend.controller.student;
import com.egradebook.frontend.model.Lesson;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.ScheduleHelper;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;

import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.util.List;

public class StudentScheduleController {
    @FXML private GridPane timetableGrid;
    @FXML private VBox mainContainer;

    @FXML
    public void initialize() {
        List<Lesson> lessons = StudentService.getSchedule().getValue();
        ScheduleHelper.populateSchedule(timetableGrid, mainContainer, lessons);
    }



    @FXML
    private void back() {
        Stage stage = (Stage) timetableGrid.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }
}
