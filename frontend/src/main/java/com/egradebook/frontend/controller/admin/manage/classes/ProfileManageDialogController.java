package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.model.Profile;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.beans.property.SimpleIntegerProperty;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.util.List;

public class ProfileManageDialogController {

    @FXML private Button returnButton;
    @FXML private TableView<Profile> profilesTable;
    @FXML private TableColumn<Profile, Integer> colId;
    @FXML private TableColumn<Profile, String> colName;
    @FXML private TableColumn<Profile, String> colShortName;

    @FXML private Label detailId;
    @FXML private Label detailName;
    @FXML private Label detailDescription;

    private List<Profile> profiles;
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

    private void showProfileDetails(Profile profile) {
        if (profile == null) {
            detailId.setText("");
            detailName.setText("");
            colShortName.setText("");
            return;
        }
        detailId.setText(String.valueOf(profile.getId()));
        detailName.setText(profile.getName());
        colShortName.setText(profile.getShort_name());
    }

    @FXML
    public void handleAddProfile() {
        // Tutaj otwierasz okno/dialog do dodania profilu
        // ProfileDialog dialog = new ProfileDialog(null);
        // dialog.showAndWait();
        // if (dialog.isSaved()) { reloadProfiles(); }
        // Demo:
        System.out.println("Dodaj profil");
    }

    @FXML
    public void handleEditProfile() {
        Profile selected = profilesTable.getSelectionModel().getSelectedItem();
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
        Profile selected = profilesTable.getSelectionModel().getSelectedItem();
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
        //profiles = ProfileService.getAllProfiles().getValue();
        profilesTable.setItems(FXCollections.observableArrayList(profiles));
    }

    public void setDialogStage(Stage s) {
        this.dialogStage = s;
    }
}
