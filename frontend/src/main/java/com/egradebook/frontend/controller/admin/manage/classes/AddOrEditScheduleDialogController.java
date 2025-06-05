package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.dto.AddScheduleRequest;
import com.egradebook.frontend.model.*;
import com.egradebook.frontend.service.AdminService;
import com.egradebook.frontend.service.ClassService;
import com.egradebook.frontend.service.SubjectService;
import com.egradebook.frontend.service.TeacherService;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

import java.util.ArrayList;
import java.util.List;

public class AddOrEditScheduleDialogController {

    @FXML private ComboBox<Integer> dayCombo;
    @FXML private ComboBox<Integer> lessonCombo;
    @FXML private ComboBox<Subject> subjectCombo;
    @FXML private ComboBox<Integer> groupCombo;
    @FXML private ComboBox<Teacher> teacherCombo;
    @FXML private TextField roomField;
    @FXML private Label errorLabel;
    @FXML private Label classLabel;
    @FXML private GridPane timetableGrid;

    private Clazz clazz;
    private List<Lesson> schedule;
    private List<Lesson> selectedLessons = new ArrayList<>();
    private Stage dialogStage;

    public void setDialogStage(Stage s) {
        this.dialogStage = s;
    }

    public void setClazz(Clazz clazz) {
        this.clazz = clazz;
        classLabel.setText("Podgląd planu lekcji klasy: " + clazz.getShort_name());
        reloadPlan();
        fillCombos();
        showScheduleGrid();
    }

    private void fillCombos() {
        dayCombo.setItems(FXCollections.observableArrayList(1, 2, 3, 4, 5));
        lessonCombo.setItems(FXCollections.observableArrayList(1,2,3,4,5,6,7,8));
        subjectCombo.setItems(FXCollections.observableArrayList(SubjectService.getAllSubjects().getValue()));
        groupCombo.setItems(FXCollections.observableArrayList(1, 2, 3, 4));
        subjectCombo.valueProperty().addListener((obs, oldVal, newVal) -> {
            if (newVal != null) {
                List<Teacher> teachers = TeacherService.getTeachersForSubject(newVal.getSubject_id()).getValue();
                teacherCombo.setItems(FXCollections.observableArrayList(teachers));
                teacherCombo.getSelectionModel().clearSelection();
            } else {
                teacherCombo.setItems(FXCollections.observableArrayList());
                teacherCombo.getSelectionModel().clearSelection();
            }
        });
    }

    private void reloadPlan() {
        schedule = ClassService.getSchedule(clazz.getClass_id()).getValue();
    }


    private void showScheduleGrid() {
        String[] days = {"PON", "WT", "ŚR", "CZW", "PT"};
        timetableGrid.getChildren().clear();

        for (int i = 0; i < days.length; i++) {
            Label dayLabel = new Label(days[i]);
            dayLabel.setStyle("-fx-font-weight: bold; -fx-padding: 5;");
            timetableGrid.add(dayLabel, i + 1, 0);
        }
        for (int lessonNum = 1; lessonNum <= 8; lessonNum++) {
            Label lessonLabel = new Label("Lekcja " + lessonNum);
            lessonLabel.setStyle("-fx-font-weight: bold; -fx-padding: 5;");
            timetableGrid.add(lessonLabel, 0, lessonNum);
        }

        // Dodajemy: dla każdego slotu lekcji (dzień/godzina) wrzucamy wszystkie grupy do wspólnego VBoxa
        for (int dayIndex = 1; dayIndex <= 5; dayIndex++) {
            for (int lessonIndex = 1; lessonIndex <= 8; lessonIndex++) {
                // Zbierz wszystkie lekcje na dany slot (różne grupy)
                List<Lesson> lessonsForSlot = new ArrayList<>();
                for (Lesson lesson : schedule) {
                    if (lesson.getDay_od_week() == dayIndex && lesson.getLesson_number() == lessonIndex) {
                        lessonsForSlot.add(lesson);
                    }
                }
                if (!lessonsForSlot.isEmpty()) {
                    VBox cellBox = new VBox(6);
                    cellBox.setStyle("-fx-padding: 4; -fx-background-color: #e0f3e0; -fx-border-color: #c0c0c0; -fx-border-radius: 7; -fx-background-radius: 7;");
                    for (Lesson lesson : lessonsForSlot) {
                        VBox lessonBox = new VBox(2);
                        lessonBox.setStyle("-fx-background-color: #fffbe7; -fx-border-color: #a7b6b9; -fx-border-radius: 3; -fx-background-radius: 3; -fx-padding: 2;");

                        Label subj = new Label(lesson.getSubject_name());
                        subj.setStyle("-fx-font-weight: bold; -fx-font-size: 12;");
                        Label group = new Label("Grupa: " + lesson.getGroup_number());
                        group.setStyle("-fx-font-size: 11; -fx-text-fill: #0066aa;");
                        Label teach = new Label(lesson.getTeacher_fullname());
                        teach.setStyle("-fx-font-size: 10;");
                        Label room = new Label("Sala: " + lesson.getRoom_number());
                        room.setStyle("-fx-font-size: 10;");

                        lessonBox.getChildren().addAll(subj, group, teach, room);

                        // Obsługa zaznaczenia
                        if (selectedLessons.contains(lesson)) {
                            lessonBox.setStyle("-fx-background-color: #ffcccc; -fx-border-color: #a00; -fx-padding: 2;");
                        }
                        lessonBox.setOnMouseClicked(e -> {
                            if (e.isControlDown()) {
                                if (selectedLessons.contains(lesson)) {
                                    selectedLessons.remove(lesson);
                                } else {
                                    selectedLessons.add(lesson);
                                }
                            } else {
                                if (selectedLessons.size() == 1 && selectedLessons.contains(lesson)) {
                                    selectedLessons.clear();
                                } else {
                                    selectedLessons.clear();
                                    selectedLessons.add(lesson);
                                }
                            }
                            showScheduleGrid();
                        });

                        cellBox.getChildren().add(lessonBox);
                    }
                    timetableGrid.add(cellBox, dayIndex, lessonIndex);
                }
            }
        }
    }


    @FXML
    private void onAdd() {
        errorLabel.setText("");
        if (dayCombo.getValue() == null || lessonCombo.getValue() == null ||
                subjectCombo.getValue() == null || teacherCombo.getValue() == null ||
                roomField.getText().isBlank()) {
            errorLabel.setText("Wypełnij wszystkie pola!");
            return;
        }
        int day = dayCombo.getSelectionModel().getSelectedIndex() + 1;
        int lessonNum = lessonCombo.getValue();

        int group = groupCombo.getValue();
        for (Lesson l : schedule) {
            if (l.getDay_od_week() == day && l.getLesson_number() == lessonNum && l.getGroup_number() == group) {
                errorLabel.setText("Ten slot dla tej grupy jest już zajęty!");
                return;
            }
        }

        AdminService.addLessonToSchedule(
                new AddScheduleRequest(
                        clazz.getClass_id(),
                        teacherCombo.getValue().getTeacher_id(),
                        subjectCombo.getValue().getSubject_id(),
                        groupCombo.getValue(),
                        dayCombo.getValue(),
                        lessonCombo.getValue(),
                        Integer.parseInt(roomField.getText())
                )
        );
        reloadPlan();
        showScheduleGrid();
    }

    @FXML
    private void onDelete() {
        if (selectedLessons.isEmpty()) {
            errorLabel.setText("Najpierw kliknij lekcję do usunięcia w siatce!");
            return;
        }
        for (Lesson lesson : selectedLessons) {
            AdminService.deleteLessonFromSchedule(lesson.getSchedule_id());
        }
        selectedLessons.clear();
        reloadPlan();
        showScheduleGrid();
    }

    @FXML
    public void close() {
        dialogStage.close();
    }
}
