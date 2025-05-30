package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Student;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class EditStudentDialog extends Stage {
    public EditStudentDialog(Student student) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/com/egradebook/frontend/view/admin/EditStudentDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle(student == null ? "Dodaj ucznia" : "Edytuj ucznia");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            EditStudentDialogController controller = loader.getController();
            controller.setStudent(student);
            controller.setDialogStage(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
