package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Group;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.service.StudentService;
import javafx.fxml.FXML;
import javafx.scene.control.ListView;
import javafx.scene.control.SelectionMode;
import javafx.stage.Stage;

import java.util.ArrayList;
import java.util.List;

public class AssignToGroupDialogController {
    @FXML private ListView<String> groupListView;

    private Student student;
    private Stage dialogStage;

    public void setStudent(Student s) { this.student = s; }
    public void setDialogStage(Stage s) { this.dialogStage = s; }

    @FXML
    public void initialize() {
        // Przykładowe grupy, możesz pobierać z serwisu jeśli masz backend
        groupListView.getItems().addAll("Matematyka", "Angielski", "Niemiecki", "Fizyka");
        groupListView.getSelectionModel().setSelectionMode(SelectionMode.MULTIPLE);

        //todo Wstępnie zaznacz już przypisane grupy ucznia
        /*
        if (student != null && student.getGroups() != null) {
            for (String g : student.getGroups()) {
                groupListView.getSelectionModel().select(g);
            }
        }
        */
    }

    @FXML
    public void save() {
        //todo List<Group> selectedGroups = new ArrayList<>(groupListView.getSelectionModel().getSelectedItems());

        //student.setGroups(selectedGroups);
        //StudentService.saveOrUpdate(student);
        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
