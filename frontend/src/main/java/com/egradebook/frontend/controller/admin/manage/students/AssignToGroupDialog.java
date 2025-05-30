package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Student;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class AssignToGroupDialog extends Stage {
    public AssignToGroupDialog(Student student) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/com/egradebook/frontend/view/admin/AssignToGroupDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Przypisz do grupy");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            AssignToGroupDialogController controller = loader.getController();
            controller.setStudent(student);
            controller.setDialogStage(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
