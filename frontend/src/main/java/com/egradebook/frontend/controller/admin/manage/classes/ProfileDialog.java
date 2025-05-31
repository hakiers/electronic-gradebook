package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.model.ClassProfile;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class ProfileDialog extends Stage {
    private ProfileDialogController controller;

    public ProfileDialog(ClassProfile classProfile) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/admin/manage/classes/ProfileDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle(classProfile == null ? "Dodaj profil" : "Edytuj profil");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            controller = loader.getController();
            controller.setDialogStage(this);
            controller.setProfile(classProfile);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean isSaved() {
        return controller.isSaved();
    }
}
