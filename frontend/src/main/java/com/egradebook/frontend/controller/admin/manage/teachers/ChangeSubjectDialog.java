package com.egradebook.frontend.controller.admin.manage.teachers;

import com.egradebook.frontend.controller.admin.manage.students.ChangeClassDialogController;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.Teacher;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Modality;
import javafx.stage.Stage;

public class ChangeSubjectDialog extends Stage {
    public ChangeSubjectDialog(Teacher teacher) {
        try {
            FXMLLoader loader = new FXMLLoader(getClass().getResource("/fxml/admin/manage/teachers/ChangeSubjectDialog.fxml"));
            setScene(new Scene(loader.load()));
            setTitle("Zmień przedmioty");
            initModality(Modality.APPLICATION_MODAL);
            setResizable(false);

            ChangeSubjectDialogController controller = loader.getController();
            controller.setTeacher(teacher);
            controller.setDialogStage(this);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
