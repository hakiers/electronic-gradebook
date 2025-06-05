package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Group;
import com.egradebook.frontend.model.Lesson;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.service.ClassService;
import com.egradebook.frontend.service.StudentService;
import javafx.fxml.FXML;
import javafx.scene.control.ComboBox;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.layout.HBox;
import javafx.stage.Stage;

import java.util.*;
import java.util.stream.Collectors;

public class AssignToGroupDialogController {
    @FXML private ListView<HBox> subjectsListView;
    private Student student;
    private Stage dialogStage;
    private final Map<String, ComboBox<GroupInfo>> subjectComboMap = new HashMap<>();

    // Pomocnicza klasa do combo
    public static class GroupInfo {
        private final int groupId;
        private final int groupNumber;
        private final String displayName;

        public GroupInfo(int groupId, int groupNumber, String displayName) {
            this.groupId = groupId;
            this.groupNumber = groupNumber;
            this.displayName = displayName;
        }
        @Override public String toString() { return displayName; }
        public int getGroupId() { return groupId; }
        public int getGroupNumber() { return groupNumber; }
    }

    public void setDialogStage(Stage s) { this.dialogStage = s; }

    public void setStudent(Student student) {
        this.student = student;
        loadSubjectsAndGroups();
    }

    private void loadSubjectsAndGroups() {
        subjectsListView.getItems().clear();
        subjectComboMap.clear();

        if (student == null || student.getClass_id() == 0) return;
        List<Lesson> lessons = ClassService.getSchedule(student.getClass_id()).getValue();
        if (lessons == null) return;

        Map<String, List<Lesson>> lessonsBySubject = lessons.stream()
                .collect(Collectors.groupingBy(Lesson::getSubject_name));


        for (Map.Entry<String, List<Lesson>> entry : lessonsBySubject.entrySet()) {
            String subjectName = entry.getKey();
            List<Lesson> subjectLessons = entry.getValue();

            Label subjectLabel = new Label(subjectName);

            List<GroupInfo> groupInfos = subjectLessons.stream()
                    .collect(Collectors.groupingBy(Lesson::getGroup_id))
                    .values().stream()
                    .map(list -> {
                        Lesson l = list.get(0);
                        return new GroupInfo(
                                l.getGroup_id(),
                                l.getGroup_number(),
                                "Grupa " + l.getGroup_number()
                        );
                    })
                    .collect(Collectors.toList());

            ComboBox<GroupInfo> groupCombo = new ComboBox<>();
            groupCombo.getItems().addAll(groupInfos);

            // (Opcjonalnie) ustaw wybraną grupę, jeśli student już przypisany:
            // int assignedGroupId = student.getAssignedGroupIdForSubject(subjectName);
            // for (GroupInfo info : groupInfos)
            //     if (info.getGroupId() == assignedGroupId) groupCombo.getSelectionModel().select(info);
            if (assignedGroupId != -1) {
                for (GroupInfo info : groupInfos) {
                    if (info.getGroupId() == assignedGroupId) {
                        groupCombo.getSelectionModel().select(info);
                        break;
                    }
                }
            }

            HBox row = new HBox(20, subjectLabel, groupCombo);
            row.setStyle("-fx-alignment: CENTER_LEFT;");
            subjectsListView.getItems().add(row);
            subjectComboMap.put(subjectName, groupCombo);
        }
    }

    @FXML
    public void save() {
        // Odczytaj wybory i zapisz je do studenta
        for (Map.Entry<String, ComboBox<GroupInfo>> entry : subjectComboMap.entrySet()) {
            String subjectName = entry.getKey();
            GroupInfo selected = entry.getValue().getSelectionModel().getSelectedItem();
            if (selected != null) {
                // Tu przypisz grupę do ucznia (musisz mieć taką metodę w modelu)
                // student.assignGroupToSubject(subjectName, selected.getGroupId());
            }
        }
        // StudentService.saveOrUpdate(student);
        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
