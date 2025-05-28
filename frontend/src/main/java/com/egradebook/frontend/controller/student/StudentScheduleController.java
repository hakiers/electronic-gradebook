package com.egradebook.frontend.controller.student;
import com.egradebook.frontend.model.Lesson;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.stage.Stage;

import java.util.List;

public class StudentScheduleController {
    @FXML private GridPane timetableGrid;

    @FXML
    public void initialize() {
        // Nagłówki dni tygodnia
        String[] days = {"PON", "WT", "ŚR", "CZW", "PT"};
        for (int i = 0; i < days.length; i++) {
            Label dayLabel = createHeaderLabel(days[i]);
            timetableGrid.add(dayLabel, i+1, 0);
        }

        // Nagłówki numerów lekcji
        for (int lessonNum = 1; lessonNum <= 8; lessonNum++) {
            Label lessonLabel = createHeaderLabel("Lekcja " + lessonNum);
            timetableGrid.add(lessonLabel, 0, lessonNum);
        }

        // Przykładowe dane - w praktyce pobierasz z bazy
        List<Lesson> lessons = StudentService.getSchedule().getValue();

        // Wypełnienie siatki danymi
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
        label.setFont(Font.font("System", FontWeight.BOLD, 12));
        label.setStyle("-fx-padding: 5; -fx-alignment: center;");
        return label;
    }

    private VBox createLessonBox(Lesson lesson) {
        VBox box = new VBox(3);
        box.setStyle("-fx-padding: 5; -fx-background-color: #e8f4f8; -fx-border-color: #d0d0d0;");

        // Tutaj warto dodać mapowanie ID na nazwy
        Label subject = new Label("Przedmiot: " + lesson.getSubject_id());
        Label teacher = new Label("Nauczyciel: " + lesson.getTeacher_id());
        Label room = new Label("Sala: " + lesson.getRoom_number());

        box.getChildren().addAll(subject, teacher, room);
        return box;
    }

    @FXML
    private void back() {
        Stage stage = (Stage) timetableGrid.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }
}
