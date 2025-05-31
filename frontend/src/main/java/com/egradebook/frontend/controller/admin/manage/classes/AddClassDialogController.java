package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.dto.AddClassRequest;
import com.egradebook.frontend.model.ClassProfile;
import com.egradebook.frontend.model.Teacher;
import com.egradebook.frontend.service.AdminService;
import com.egradebook.frontend.service.ClassService;
import com.egradebook.frontend.service.TeacherService;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;
import javafx.collections.FXCollections;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class AddClassDialogController {

    @FXML private ComboBox<ClassProfile> profileField;
    @FXML private ComboBox<Teacher> teacherCombo;
    @FXML private ComboBox<String> groupsCombo;
    @FXML private Label errorLabel;

    private Stage dialogStage;
    private boolean saved = false;

    public void setDialogStage(Stage s) {
        this.dialogStage = s;
    }

    public boolean isSaved() {
        return saved;
    }

    @FXML
    public void initialize() {
        List<ClassProfile> classProfiles = ClassService.getAllProfiles().getValue();
        profileField.setItems(FXCollections.observableArrayList(classProfiles));

        List<Teacher> teachers = AdminService.getAllTeachers().getValue();
        teacherCombo.setItems(FXCollections.observableArrayList(teachers));


        int currentYear = LocalDate.now().getYear();
        List<String> years = new ArrayList<>();
        for (int y = currentYear - 4; y <= currentYear + 4; y++) {
            years.add(String.valueOf(y));
        }

        groupsCombo.setItems(FXCollections.observableArrayList(years));
    }

    @FXML
    public void save() {
        ClassProfile selectedClassProfile = profileField.getValue();
        Teacher selectedTeacher = teacherCombo.getValue();
        String selectedYear = groupsCombo.getValue();

        if (selectedClassProfile == null || selectedTeacher == null || selectedYear == null) {
            errorLabel.setText("Wypełnij wszystkie pola!");
            return;
        }

        AddClassRequest clazz = new AddClassRequest(
                profileField.getValue().getId(),
                teacherCombo.getValue().getTeacher_id(),
                groupsCombo.getValue()
        );

        AdminService.addClass(clazz);
        saved = true;
        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
