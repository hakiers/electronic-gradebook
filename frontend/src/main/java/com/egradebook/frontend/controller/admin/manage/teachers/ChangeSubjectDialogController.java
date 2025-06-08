package com.egradebook.frontend.controller.admin.manage.teachers;

import com.egradebook.frontend.model.Subject;
import com.egradebook.frontend.model.Teacher;
import com.egradebook.frontend.service.AdminService;
import com.egradebook.frontend.service.TeacherService;
import javafx.fxml.FXML;
import javafx.stage.Stage;
import org.controlsfx.control.CheckComboBox;

import java.util.List;
import java.util.Objects;

public class ChangeSubjectDialogController {
    @FXML private CheckComboBox<Subject> subjectsCheckComboBox;


    private Teacher teacher;
    private Stage dialogStage;

    public void setDialogStage(Stage dialogStage) {
        this.dialogStage = dialogStage;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
        loadSubjects();
    }

    private void loadSubjects() {
        List<Subject> allSubjects = AdminService.getAllSubjects().getValue();
        subjectsCheckComboBox.getItems().setAll(allSubjects);

        List<Subject> teacherSubjects = TeacherService.getTeacherSubjects(teacher.getTeacher_id()).getValue();

        if (teacherSubjects != null) {
            for (Subject subject : allSubjects) {
                if (teacherSubjects.stream().anyMatch(s -> Objects.equals(s.getSubject_id(), subject.getSubject_id()))) {
                    subjectsCheckComboBox.getCheckModel().check(subject);
                }
            }
        }
    }

    @FXML
    public void save() {
        List<Subject> selectedSubjects = subjectsCheckComboBox.getCheckModel().getCheckedItems();
        List<Subject> oldSubjects = TeacherService.getTeacherSubjects(teacher.getTeacher_id()).getValue();

        for (Subject subject : selectedSubjects) {
            boolean alreadyAssigned = oldSubjects.stream()
                    .anyMatch(s -> Objects.equals(s.getSubject_id(), subject.getSubject_id()));
            if (!alreadyAssigned) {
                AdminService.addTeacherSubject(teacher.getTeacher_id(), subject.getSubject_id());
            }
        }

        for (Subject subject : oldSubjects) {
            boolean stillChecked = selectedSubjects.stream()
                    .anyMatch(s -> Objects.equals(s.getSubject_id(), subject.getSubject_id()));
            if (!stillChecked) {
                AdminService.deleteTeacherSubject(teacher.getTeacher_id(), subject.getSubject_id());
            }
        }

        dialogStage.close();
    }


    @FXML
    public void cancel() {
        dialogStage.close();
    }

}
