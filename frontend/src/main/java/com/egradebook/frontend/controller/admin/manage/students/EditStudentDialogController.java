package com.egradebook.frontend.controller.admin.manage.students;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Group;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.service.ClassService;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

public class EditStudentDialogController {
    @FXML private TextField firstNameField;
    @FXML private TextField lastNameField;
    @FXML private ComboBox<Clazz> clazzField;
    @FXML private ComboBox<Group> groupsField; // np. "matematyka, angielski"
    @FXML private Label statusLabel;

    private Student student;
    private Stage dialogStage;

    public void setStudent(Student s) {
        this.student = s;
        if (s != null) {
            firstNameField.setText(s.getName());
            lastNameField.setText(s.getSurname());
            Clazz clazz = ClassService.getClazz(s.getClass_id()).getValue();
            clazzField.setValue(clazz);
            //todo
            //groupsField.setText(String.join(", ", s.getGroups()));
        }
    }

    public void setDialogStage(Stage s) {
        this.dialogStage = s;
    }

    @FXML
    public void save() {
        String fname = firstNameField.getText();
        String lname = lastNameField.getText();
        Clazz clazz = clazzField.getValue();
        //todo Group[] groups = groupsField.getItems();

        if (fname.isEmpty() || lname.isEmpty() || clazz == null) {
            statusLabel.setText("Uzupełnij wszystkie pola!");
            return;
        }
        if (student == null)
            return;
            //todo student = new Student(0, fname, lname, clazz, Arrays.asList(groups));
        else {
            //todo zrobić requesta do bazy zapisujaca now imie naziwsko klase i liste grup przedmitowych studenta
            //
            //request.firstNameProperty().set(fname);
            //student.lastNameProperty().set(lname);
            //student.setClazzName(clazz);
            //student.setGroups(Arrays.asList(groups));
        }

        //todo wylsac requesta z update do bazy typu
        //StudentService.saveOrUpdate(student);
        dialogStage.close();
    }

    @FXML
    public void cancel() {
        dialogStage.close();
    }
}
