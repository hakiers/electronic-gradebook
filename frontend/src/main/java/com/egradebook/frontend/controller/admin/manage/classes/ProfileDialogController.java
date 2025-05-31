package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.dto.AddClassProfileRequest;
import com.egradebook.frontend.model.ClassProfile;
import com.egradebook.frontend.service.AdminService;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

public class ProfileDialogController {

    @FXML private TextField nameField;
    @FXML private TextField shortNameField;
    @FXML private Label statusLabel;
    @FXML private Button saveButton;
    @FXML private Button cancelButton;

    private Stage dialogStage;
    private ClassProfile classProfile;
    private boolean saved = false;

    public void setDialogStage(Stage s) {
        this.dialogStage = s;
    }

    public void setProfile(ClassProfile classProfile) {
        this.classProfile = classProfile;
        if (classProfile != null) {
            nameField.setText(classProfile.getName());
            shortNameField.setText(classProfile.getShort_name());
        }
    }

    public boolean isSaved() {
        return saved;
    }

    @FXML
    public void save() {
        String name = nameField.getText();
        String shortName = shortNameField.getText();

        if (name.isEmpty() || shortName.isEmpty()) {
            statusLabel.setText("Wypełnij wszystkie pola!");
            return;
        }

        if (classProfile == null) {
            AddClassProfileRequest newProfile = new AddClassProfileRequest(name, shortName);
            AdminService.addProfile(newProfile);
        } else {
            //todo query do update profilu
        }

        saved = true;
        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
