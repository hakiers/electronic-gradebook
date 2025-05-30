package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Student;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class ChangeClassDialog extends Stage {
    public ChangeClassDialog(Student student) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/com/egradebook/frontend/view/admin/ChangeClassDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Zmień klasę");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            ChangeClassDialogController controller = loader.getController();
            controller.setStudent(student);
            controller.setDialogStage(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
