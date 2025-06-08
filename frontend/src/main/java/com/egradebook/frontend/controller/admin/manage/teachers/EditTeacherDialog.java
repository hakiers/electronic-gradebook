package com.egradebook.frontend.controller.admin.manage.teachers;

import com.egradebook.frontend.controller.admin.manage.students.EditStudentDialogController;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.Teacher;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class EditTeacherDialog extends Stage {
    public EditTeacherDialog(Teacher teacher) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/admin/manage/teachers/EditTeacherDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle(teacher == null ? "Dodaj nauczyciela" : "Edytuj nauczyciela");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            EditTeacherDialogController controller = loader.getController();
            controller.setStudent(teacher);
            controller.setDialogStage(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
