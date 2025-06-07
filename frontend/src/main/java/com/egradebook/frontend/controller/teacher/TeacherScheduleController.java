package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.model.Lesson;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.*;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.stage.Stage;

import java.util.List;

public class TeacherScheduleController {
    @FXML private GridPane timetableGrid;
    @FXML private VBox mainContainer;

    @FXML
    public void initialize() {
        String[] days = {"PON", "WT", "ŚR", "CZW", "PT"};

        for (int i = 0; i < days.length; i++) {
            Label dayLabel = createHeaderLabel(days[i]);
            timetableGrid.add(dayLabel, i + 1, 0);
        }

        for (int lessonNum = 1; lessonNum <= 8; lessonNum++) {
            Label lessonLabel = createHeaderLabel("Lekcja " + lessonNum);
            timetableGrid.add(lessonLabel, 0, lessonNum);
        }

        List<Lesson> lessons = TeacherService.getSchedule().getValue();
        for (Lesson lesson : lessons) {
            int day = lesson.getDay_od_week();
            int period = lesson.getLesson_number();

            if (day >= 1 && day <= 5 && period >= 1 && period <= 8) {
                VBox lessonBox = createLessonBox(lesson);
                timetableGrid.add(lessonBox, day, period);
            }
        }

        for (int i = 0; i <= 5; i++) {
            ColumnConstraints col = new ColumnConstraints();
            col.setPercentWidth(100.0 / 6);
            col.setFillWidth(true);
            timetableGrid.getColumnConstraints().add(col);
        }

        for (int i = 0; i <= 8; i++) {
            RowConstraints row = new RowConstraints();
            row.setPercentHeight(100.0 / 9);
            row.setFillHeight(true);
            timetableGrid.getRowConstraints().add(row);
        }

        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            scene.getStylesheets().add(getClass().getResource("/css/base.css").toExternalForm());
            scene.getStylesheets().add(getClass().getResource("/css/student.css").toExternalForm());
        });
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

        Label teacher = new Label(lesson.getTeacher_fullname());
        teacher.setStyle("-fx-font-size: 11;");

        Label room = new Label("s. " + lesson.getRoom_number());
        room.setStyle("-fx-font-size: 11;");

        Label group = new Label("grupa: " + lesson.getGroup_number());
        group.setStyle("-fx-font-size: 11;");

        box.getChildren().addAll(subject, teacher, room, group);
        box.setPrefSize(120, 60);
        return box;
    }

    @FXML
    private void back() {
        Stage stage = (Stage) timetableGrid.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }
}
