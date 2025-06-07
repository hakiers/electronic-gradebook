package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.dto.AssignStudentToGroupsRequest;
import com.egradebook.frontend.model.Group;
import com.egradebook.frontend.model.Lesson;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.model.SubjectGroup;
import com.egradebook.frontend.service.AdminService;
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
    private final Map<String, ComboBox<SubjectGroup>> subjectComboMap = new HashMap<>();


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


        List<SubjectGroup> subjectGroups = AdminService.getStudentSubjectGroups(student.getStudent_id()).getValue();
        for (Map.Entry<String, List<Lesson>> entry : lessonsBySubject.entrySet()) {
            String subjectName = entry.getKey();
            List<Lesson> subjectLessons = entry.getValue();

            Label subjectLabel = new Label(subjectName);

            List<SubjectGroup> groupInfos = subjectLessons.stream()
                    .collect(Collectors.groupingBy(Lesson::getGroup_id))
                    .values().stream()
                    .map(list -> {
                        Lesson l = list.get(0);
                        return new SubjectGroup(
                                l.getGroup_id(),
                                l.getClass_id(),
                                l.getSubject_id(),
                                l.getGroup_number()
                        );
                    })
                    .collect(Collectors.toList());

            ComboBox<SubjectGroup> groupCombo = new ComboBox<>();
            groupCombo.getItems().addAll(groupInfos);

            // KLUCZOWA CZĘŚĆ:
            int subjectId = subjectLessons.get(0).getSubject_id();
            Optional<SubjectGroup> assignedGroupOpt = subjectGroups.stream()
                    .filter(g -> g.getSubject_id() == subjectId)
                    .findFirst();

            assignedGroupOpt.ifPresent(assignedGroup -> {
                for (SubjectGroup info : groupInfos) {
                    if (info.getGroup_id() == assignedGroup.getGroup_id()) {
                        groupCombo.getSelectionModel().select(info);
                        break;
                    }
                }
            });

            HBox row = new HBox(20, subjectLabel, groupCombo);
            row.setStyle("-fx-alignment: CENTER_LEFT;");
            subjectsListView.getItems().add(row);
            subjectComboMap.put(subjectName, groupCombo);
        }

    }

    @FXML
    public void save() {
        List<Group> groups = new ArrayList<>();
        for (Map.Entry<String, ComboBox<SubjectGroup>> entry : subjectComboMap.entrySet()) {
            SubjectGroup selected = entry.getValue().getSelectionModel().getSelectedItem();
            if (selected != null) {
                groups.add(new Group(selected.getGroup_id(), selected.getGroup_number()));
            }
        }
        AdminService.assignGroupToSubject(new AssignStudentToGroupsRequest(student.getStudent_id(), groups));
        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
