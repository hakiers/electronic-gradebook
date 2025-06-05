package com.egradebook.frontend.controller.student;
import com.egradebook.frontend.model.Lesson;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.application.Platform;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.*;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.RowConstraints;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.stage.Stage;

import java.util.List;

public class StudentScheduleController {
    @FXML private GridPane timetableGrid;
    @FXML private VBox mainContainer;

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

        List<Lesson> lessons = StudentService.getSchedule().getValue();
        VBox[][] lessonCells = new VBox[6][9];
        /*
        for (Lesson lesson : lessons) {
            int dayIndex = lesson.getDay_od_week(); // 1-5 (Pon-Pt)
            int lessonIndex = lesson.getLesson_number(); // 1-8

            if (dayIndex >= 1 && dayIndex <= 5 && lessonIndex >= 1 && lessonIndex <= 8) {
                VBox lessonBox = createLessonBox(lesson);
                timetableGrid.add(lessonBox, dayIndex, lessonIndex);
            }
        }
         */
        for (Lesson lesson : lessons) {
            int dayIndex = lesson.getDay_od_week(); // 1-5 (Pon-Pt)
            int lessonIndex = lesson.getLesson_number(); // 1-8

            if (dayIndex >= 1 && dayIndex <= 5 && lessonIndex >= 1 && lessonIndex <= 8) {
                // Jeśli nie ma jeszcze kontenera dla tej komórki - dodaj go do gridu
                if (lessonCells[dayIndex][lessonIndex] == null) {
                    VBox cellBox = new VBox(4);
                    cellBox.setStyle("-fx-background-color: #aed581; -fx-border-color: #7cb342; -fx-padding: 3;"
                            + "-fx-border-radius: 5; -fx-background-radius: 5;");
                    lessonCells[dayIndex][lessonIndex] = cellBox;
                    timetableGrid.add(cellBox, dayIndex, lessonIndex);
                }
                // Doklejaj każdy lessonBox do tej komórki
                VBox lessonBox = createLessonBox(lesson);
                lessonCells[dayIndex][lessonIndex].getChildren().add(lessonBox);
            }
        }


        for (int i = 0; i <= 5; i++) { // 0 to nagłówki dni (pon-pt)
            ColumnConstraints col = new ColumnConstraints();
            col.setPercentWidth(100.0 / 6); // 6 kolumn: 1 na lekcje, 5 na dni
            col.setFillWidth(true);
            timetableGrid.getColumnConstraints().add(col);
        }

        for (int i = 0; i <= 8; i++) { // 0 to nagłówki godzin (1–8 lekcji)
            RowConstraints row = new RowConstraints();
            row.setPercentHeight(100.0 / 9); // 9 wierszy: 1 na nagłówki + 8 lekcji
            row.setFillHeight(true);
            timetableGrid.getRowConstraints().add(row);
        }

        Platform.runLater(() -> {
            Scene scene = mainContainer.getScene();
            scene.getStylesheets().add(getClass().getResource("/css/base.css").toExternalForm());
            scene.getStylesheets().add(getClass().getResource("/css/student.css").toExternalForm());
        });

    }

    /*private Label createHeaderLabel(String text) {
        Label label = new Label(text);
        label.setFont(Font.font("System", FontWeight.BOLD, 12));
        label.setStyle("-fx-padding: 5; -fx-alignment: center;");
        return label;
    }*/
    private Label createHeaderLabel(String text) {
        Label label = new Label(text);
        label.setFont(Font.font("System", FontWeight.BOLD, 14));
        label.setStyle("-fx-background-color: #3498db; -fx-text-fill: white; -fx-alignment: center; "
                + "-fx-padding: 8; -fx-border-color: #2980b9;");
        label.setMaxWidth(Double.MAX_VALUE);
        label.setMaxHeight(Double.MAX_VALUE);
        return label;
    }


    /*private VBox createLessonBox(Lesson lesson) {
        VBox box = new VBox(3);
        box.setStyle("-fx-padding: 5; -fx-background-color: #e8f4f8; -fx-border-color: #d0d0d0;");

        Label subject = new Label("Przedmiot:\n" + lesson.getSubject_name());
        Label teacher = new Label("Nauczyciel:\n" + lesson.getTeacher_fullname());
        Label room = new Label("Sala: " + lesson.getRoom_number());

        box.getChildren().addAll(subject, teacher, room);
        return box;
    }*/
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
