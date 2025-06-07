package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.model.Lesson;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.stage.Stage;

import java.util.List;

public class TeacherScheduleController {
    @FXML
    private GridPane timetableGrid;

    @FXML
    public void initialize() {

        String[] days = {"PON", "WT", "ŚR", "CZW", "PT"};
        for (int i = 0; i < days.length; i++) {
            Label dayLabel = createHeaderLabel(days[i]);
            timetableGrid.add(dayLabel, i+1, 0);
        }

        for (int lessonNum = 1; lessonNum <= 8; lessonNum++) {
            Label lessonLabel = createHeaderLabel("Lekcja " + lessonNum);
            timetableGrid.add(lessonLabel, 0, lessonNum);
        }

        List<Lesson> lessons=TeacherService.getSchedule().getValue();
        for (Lesson lesson : lessons) {
            int dayIndex = lesson.getDay_od_week(); // 1-5 (Pon-Pt)
            int lessonIndex = lesson.getLesson_number(); // 1-8

            if (dayIndex >= 1 && dayIndex <= 5 && lessonIndex >= 1 && lessonIndex <= 8) {
                VBox lessonBox = createLessonBox(lesson);
                timetableGrid.add(lessonBox, dayIndex, lessonIndex);
            }
        }
    }

    private Label createHeaderLabel(String text) {
        Label label = new Label(text);
        label.setFont(Font.font("System", FontWeight.BOLD, 14));
        label.setStyle("-fx-background-color: #3498db; -fx-text-fill: white; -fx-alignment: center; "
                + "-fx-padding: 8; -fx-border-color: #2980b9;");
        label.setMaxWidth(Double.MAX_VALUE);
        label.setMaxHeight(Double.MAX_VALUE);
        return label;
    }

    private VBox createLessonBox(Lesson lesson) {
        VBox box = new VBox(3);
        box.setStyle("-fx-background-color: #aed581; -fx-border-color: #7cb342; -fx-padding: 6;"
                + "-fx-border-radius: 5; -fx-background-radius: 5;");

        Label subject = new Label(lesson.getSubject_name());
        subject.setStyle("-fx-font-weight: bold; -fx-font-size: 13;");

        Label clazz = new Label(String.valueOf(lesson.getClass_id()));
        clazz.setStyle("-fx-font-size: 11;");

        Label room = new Label("s. " + lesson.getRoom_number());
        room.setStyle("-fx-font-size: 11;");

        box.getChildren().addAll(subject, clazz, room);
        box.setPrefSize(120, 60);
        return box;
    }

    @FXML
    private void back() {
        Stage stage = (Stage) timetableGrid.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

}
