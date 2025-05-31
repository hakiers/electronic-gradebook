package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.model.ClassProfile;
import com.egradebook.frontend.service.ClassService;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.util.List;

public class ProfileManageDialogController {

    @FXML private Button returnButton;
    @FXML private TableView<ClassProfile> profilesTable;
    @FXML private TableColumn<ClassProfile, Integer> colId;
    @FXML private TableColumn<ClassProfile, String> colName;
    @FXML private TableColumn<ClassProfile, String> colShortName;

    @FXML private Label detailId;
    @FXML private Label detailName;
    @FXML private Label detailDescription;

    private List<ClassProfile> classProfiles;
    private Stage dialogStage;


    @FXML
    public void initialize() {
        colId.setCellValueFactory(data -> new SimpleIntegerProperty(data.getValue().getId()).asObject());
        colName.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getName()));
        colShortName.setCellValueFactory(data -> new SimpleStringProperty(data.getValue().getShort_name()));

        reloadProfiles();

        profilesTable.getSelectionModel().selectedItemProperty().addListener(
                (obs, oldSel, newSel) -> showProfileDetails(newSel)
        );
    }

    private void showProfileDetails(ClassProfile classProfile) {
        if (classProfile == null) {
            detailId.setText("");
            detailName.setText("");
            colShortName.setText("");
            return;
        }
        detailId.setText(String.valueOf(classProfile.getId()));
        detailName.setText(classProfile.getName());
        colShortName.setText(classProfile.getShort_name());
    }

    @FXML
    public void handleAddProfile() {
        ProfileDialog dialog = new ProfileDialog(null);
        dialog.showAndWait();
        if (dialog.isSaved()) {
            reloadProfiles();
        }
    }

    @FXML
    public void handleEditProfile() {
        ClassProfile selected = profilesTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        // Tutaj otwierasz okno/dialog do edycji profilu
        // ProfileDialog dialog = new ProfileDialog(selected);
        // dialog.showAndWait();
        // if (dialog.isSaved()) { reloadProfiles(); }
        // Demo:
        System.out.println("Edytuj profil: " + selected);
    }

    @FXML
    public void handleDeleteProfile() {
        ClassProfile selected = profilesTable.getSelectionModel().getSelectedItem();
        if (selected == null) return;
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION, "Na pewno usunąć profil?");
        alert.showAndWait().ifPresent(response -> {
            if (response == ButtonType.OK) {
                //ProfileService.deleteProfile(selected.getId());
                reloadProfiles();
            }
        });
    }

    @FXML
    public void close() {
        dialogStage.close();
    }

    private void reloadProfiles() {
        classProfiles = ClassService.getAllProfiles().getValue();
        profilesTable.setItems(FXCollections.observableArrayList(classProfiles));
    }

    public void setDialogStage(Stage s) {
        this.dialogStage = s;
    }
}
