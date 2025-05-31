package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.model.Clazz;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class AddClassDialog extends Stage {
    public AddClassDialog() {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/admin/manage/classes/AddClassDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Dodaj klase");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            AddClassDialogController controller = loader.getController();
            controller.setDialogStage(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
