package com.egradebook.frontend.controller.admin.manage.classes;

import com.egradebook.frontend.model.Clazz;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class AddOrEditScheduleDialog extends Stage {
    public AddOrEditScheduleDialog(Clazz clazz) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/admin/manage/classes/AddOrEditScheduleDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Edytuj Plan Lekcji");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            AddOrEditScheduleDialogController controller = loader.getController();
            controller.setClazz(clazz);
            controller.setDialogStage(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
