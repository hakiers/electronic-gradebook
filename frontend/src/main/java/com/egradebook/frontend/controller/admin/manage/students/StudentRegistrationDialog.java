package com.egradebook.frontend.controller.admin.manage.students;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class StudentRegistrationDialog extends Stage {
    public StudentRegistrationDialog() {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/admin/manage/students/StudentRegistrationDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Dodaj ucznia");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            StudentRegistrationDialogController controller = loader.getController();
            controller.setDialogStage(this);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
