package com.egradebook.frontend.controller.admin.manage.teachers;

import com.egradebook.frontend.controller.admin.manage.students.StudentRegistrationDialogController;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class TeacherRegistrationDialog extends Stage {
    public TeacherRegistrationDialog() {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/admin/manage/teachers/TeacherRegistrationDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Dodaj nauczyciela");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            TeacherRegistrationDialogController controller = loader.getController();
            controller.setDialogStage(this);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
