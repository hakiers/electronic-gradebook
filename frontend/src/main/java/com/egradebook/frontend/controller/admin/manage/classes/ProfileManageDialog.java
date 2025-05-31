package com.egradebook.frontend.controller.admin.manage.classes;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class ProfileManageDialog extends Stage {
    public ProfileManageDialog() {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/admin/manage/classes/ProfileManageDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Profile Klas");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            ProfileManageDialogController controller = loader.getController();
            controller.setDialogStage(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

