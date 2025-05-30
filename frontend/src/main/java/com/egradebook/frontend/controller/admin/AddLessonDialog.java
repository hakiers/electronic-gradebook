package com.egradebook.frontend.controller.admin;

import com.egradebook.frontend.model.Clazz;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class AddLessonDialog extends Stage {
    public AddLessonDialog(Clazz selectedClass) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/com/egradebook/frontend/view/admin/AddLessonDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Dodaj lekcję");
            setResizable(false);
            initModality(Modality.APPLICATION_MODAL);

            AddLessonDialogController controller = loader.getController();
            controller.setClazz(selectedClass);
            controller.setDialogStage(this);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
