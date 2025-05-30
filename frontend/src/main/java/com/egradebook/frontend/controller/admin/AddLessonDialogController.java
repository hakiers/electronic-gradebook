package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.service.ClassService;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

public class AddLessonDialogController {
    @FXML private ComboBox<String> dayComboBox;
    @FXML private Spinner<Integer> lessonNumberSpinner;
    @FXML private TextField subjectField;
    @FXML private TextField teacherField;
    @FXML private TextField roomField;
    @FXML private Button addButton;
    @FXML private Button cancelButton;
    @FXML private Label statusLabel;

    private Clazz clazz;
    private Stage dialogStage;

    public void setClazz(Clazz clazz) {
        this.clazz = clazz;
    }

    public void setDialogStage(Stage stage) {
        this.dialogStage = stage;
    }

    @FXML
    public void initialize() {
        dayComboBox.getItems().addAll("Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek");
        lessonNumberSpinner.setValueFactory(new SpinnerValueFactory.IntegerSpinnerValueFactory(1, 8, 1));
    }

    @FXML
    private void addLesson() {
        int dayOfWeek = dayComboBox.getSelectionModel().getSelectedIndex() + 1; // 1-5
        int lessonNumber = lessonNumberSpinner.getValue();
        String subject = subjectField.getText();
        String teacher = teacherField.getText();
        String room = roomField.getText();

        // Prosty walidator
        if(dayOfWeek < 1 || subject.isEmpty() || teacher.isEmpty() || room.isEmpty()) {
            statusLabel.setText("Wypełnij wszystkie pola!");
            return;
        }

        // Tu możesz podmienić na prawdziwe ID nauczyciela, pobierając z bazy
        //ClassService.addLesson(clazz.getClass_id(), dayOfWeek, lessonNumber, subject, 1, room); // przykładowy teacher_id = 1

        dialogStage.close();
    }

    @FXML
    private void cancel() {
        dialogStage.close();
    }
}
