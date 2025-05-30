package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Lesson;
import com.egradebook.frontend.service.ClassService;
import com.egradebook.frontend.service.StudentService;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.stage.Stage;

import java.util.List;


public class ScheduleController {

    @FXML private Button returnButton;
    @FXML private ComboBox<Clazz> classComboBox;
    @FXML private GridPane scheduleGrid;
    @FXML private Label statusLabel;

    public void initialize() {
        List<Clazz> classes = ClassService.getAllClasses().getValue();
        for(Clazz clazz : classes){
            classComboBox.getItems().add(clazz);
        }
    }

    @FXML
    private void loadSchedule() {
        Clazz selectedClass = classComboBox.getValue();

        if (selectedClass != null) {
            displayScheduleForClass(selectedClass);
        }
    }

    private void displayScheduleForClass(Clazz selectedClass) {
        scheduleGrid.getChildren().clear();

        String[] days = {"PON", "WT", "ŚR", "CZW", "PT"};
        for (int i = 0; i < days.length; i++) {
            Label dayLabel = createHeaderLabel(days[i]);
            scheduleGrid.add(dayLabel, i+1, 0);
        }

        for (int lessonNum = 1; lessonNum <= 8; lessonNum++) {
            Label lessonLabel = createHeaderLabel("Lekcja " + lessonNum);
            scheduleGrid.add(lessonLabel, 0, lessonNum);
        }

        List<Lesson> lessons = ClassService.getSchedule(selectedClass.getClass_id()).getValue();

        for (Lesson lesson : lessons) {
            int dayIndex = lesson.getDay_od_week(); // 1-5 (Pon-Pt)
            int lessonIndex = lesson.getLesson_number(); // 1-8

            if (dayIndex >= 1 && dayIndex <= 5 && lessonIndex >= 1 && lessonIndex <= 8) {
                VBox lessonBox = createLessonBox(lesson);
                scheduleGrid.add(lessonBox, dayIndex, lessonIndex);
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
        box.setStyle("-fx-padding: 5; -fx-background-color: #fef5e5; -fx-border-color: #ccc;");
        Label subject = new Label("Przedmiot:\n" + lesson.getSubject_name());
        Label teacher = new Label("Nauczyciel:\n" + lesson.getTeacher_fullname());
        Label room = new Label("Sala: " + lesson.getRoom_number());
        box.getChildren().addAll(subject, teacher, room);
        return box;
    }

    @FXML
    private void back() {
        Stage stage = (Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }

    @FXML
    private void addLesson() {
        Clazz selectedClass = classComboBox.getValue();
        if (selectedClass == null) {
            statusLabel.setText("Najpierw wybierz klasę!");
            return;
        }

        // Otwieramy dialog FXML do dodawania lekcji:
        AddLessonDialog dialog = new AddLessonDialog(selectedClass);
        dialog.showAndWait();

        // Odśwież plan po dodaniu
        displayScheduleForClass(selectedClass);
    }

    /*
    @FXML
    private void deleteLesson() {
        Clazz selectedClass = classComboBox.getValue();
        if (selectedClass == null) {
            statusLabel.setText("Najpierw wybierz klasę!");
            return;
        }

        // Otwieramy dialog FXML do usuwania lekcji:
        DeleteLessonDialog dialog = new DeleteLessonDialog(selectedClass);
        dialog.showAndWait();

        // Odśwież plan po usunięciu
        displayScheduleForClass(selectedClass);
    }
    */
}

