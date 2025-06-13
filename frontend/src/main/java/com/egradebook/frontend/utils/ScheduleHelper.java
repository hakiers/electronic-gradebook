package com.egradebook.frontend.utils;

import com.egradebook.frontend.model.Lesson;
import javafx.application.Platform;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.*;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;

import java.util.List;

public class ScheduleHelper {

    public static void populateSchedule(GridPane timetableGrid, VBox mainContainer, List<Lesson> lessons) {
        String[] days = {"PON", "WT", "ŚR", "CZW", "PT"};

        for (int i = 0; i < days.length; i++) {
            Label dayLabel = createHeaderLabel(days[i]);
            timetableGrid.add(dayLabel, i + 1, 0);
        }

        for (int lessonNum = 1; lessonNum <= 8; lessonNum++) {
            Label lessonLabel = createHeaderLabel("Lekcja " + lessonNum);
            timetableGrid.add(lessonLabel, 0, lessonNum);
        }

        VBox[][] lessonCells = new VBox[6][9];

        for (Lesson lesson : lessons) {
            int dayIndex = lesson.getDay_od_week();
            int lessonIndex = lesson.getLesson_number();

            if (dayIndex >= 1 && dayIndex <= 5 && lessonIndex >= 1 && lessonIndex <= 8) {
                if (lessonCells[dayIndex][lessonIndex] == null) {
                    VBox cellBox = new VBox(4);
                    cellBox.setStyle("-fx-background-color: #ffffff; -fx-border-color: #ffffff; -fx-padding: 3;"
                            + "-fx-border-radius: 5; -fx-background-radius: 5;");
                    lessonCells[dayIndex][lessonIndex] = cellBox;
                    timetableGrid.add(cellBox, dayIndex, lessonIndex);
                }
                VBox lessonBox = createLessonBox(lesson);
                lessonCells[dayIndex][lessonIndex].getChildren().add(lessonBox);
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
            scene.getStylesheets().add(ScheduleHelper.class.getResource("/css/base.css").toExternalForm());
            scene.getStylesheets().add(ScheduleHelper.class.getResource("/css/student.css").toExternalForm());
        });
    }

    private static Label createHeaderLabel(String text) {
        Label label = new Label(text);
        label.setFont(Font.font("System", FontWeight.BOLD, 14));
        label.setStyle("-fx-background-color: #3088c3; -fx-text-fill: white; -fx-alignment: center; "
                + "-fx-padding: 8; -fx-border-color: #0b5585;");
        label.setMaxWidth(Double.MAX_VALUE);
        label.setMaxHeight(Double.MAX_VALUE);
        return label;
    }

    private static VBox createLessonBox(Lesson lesson) {
        VBox box = new VBox(3);
        box.setStyle("-fx-background-color: #c2e1f4; -fx-border-color: #93d5f6; -fx-padding: 6;"
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
}
