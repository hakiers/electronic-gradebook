package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.model.Attendance;
import com.egradebook.frontend.model.Attendance.Status;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.request.AddAttendanceRequest;
import com.egradebook.frontend.request.EditAttendanceRequest;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.StudentAttendanceRow;
import com.egradebook.frontend.utils.AttendanceTableConfigurer;
import com.egradebook.frontend.utils.ViewLoader;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.stage.Stage;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

public class TeacherAttendanceController {
    @FXML private Button returnButton;
    @FXML private DatePicker datePicker;
    @FXML private ComboBox<Integer> lessonComboBox;
    @FXML private TableView<StudentAttendanceRow> attendanceTable;
    @FXML private TableColumn<StudentAttendanceRow, String> nameColumn;
    @FXML private TableColumn<StudentAttendanceRow, Status> statusColumn;

    private final ObservableList<StudentAttendanceRow> attendanceRows = FXCollections.observableArrayList();

    @FXML
    public void initialize() {
        AttendanceTableConfigurer.configure(attendanceTable);

        attendanceTable.setColumnResizePolicy(TableView.UNCONSTRAINED_RESIZE_POLICY);

        datePicker.setOnAction(e -> {
            updateLessonComboBox();
            loadAttendanceTable();
        });

        lessonComboBox.setOnAction(e -> loadAttendanceTable());

         datePicker.setValue(LocalDate.now());
        updateLessonComboBox();
        loadAttendanceTable();
    }

    private void updateLessonComboBox() {
        LocalDate selectedDate = datePicker.getValue();
        if (selectedDate == null) {
            lessonComboBox.getItems().clear();
            attendanceRows.clear();
            return;
        }
        List<Integer> lessons = TeacherService.getSelectedSchedule(selectedDate.getDayOfWeek().getValue()).getValue();

        lessonComboBox.setItems(FXCollections.observableArrayList(lessons));
        lessonComboBox.setValue(null);
        attendanceRows.clear();
    }

    private void loadAttendanceTable() {
        if (datePicker.getValue() == null || lessonComboBox.getValue() == null) {
            attendanceRows.clear();
            attendanceTable.setItems(attendanceRows);
            return;
        }

        attendanceRows.clear();

        List<Student> students = TeacherService.getStudentInClass(TeacherService.selectedClassId).getValue();
        students.sort(Comparator.comparing(Student::getSurname));
        if (students == null) return;

        List<Integer> ids = students.stream().map(Student::getStudent_id).toList();

        List<Attendance> attendances = TeacherService.getProcessedAttendance(
                datePicker.getValue(),
                lessonComboBox.getValue(),
                ids
        );

        for (Attendance a : attendances) {
            Student s = students.stream()
                    .filter(st -> st.getStudent_id() == a.getStudentId())
                    .findFirst()
                    .orElse(null);

            if (s == null) continue;

            StudentAttendanceRow row = new StudentAttendanceRow(a.getScheduleId(),a.getAttendanceId(), a.getStudentId(), s.getName(), s.getSurname());
            row.setStatus(a.getStatus());
            attendanceRows.add(row);
        }

        attendanceTable.setItems(attendanceRows);
    }

    @FXML
    private void saveAttendance() {
        if (datePicker.getValue() == null || lessonComboBox.getValue() == null) {
            showAlert("Uzupełnij datę i numer lekcji");
            return;
        }

        for (StudentAttendanceRow row : attendanceRows) {
            if(row.getAttendanceId()==0) {
                AddAttendanceRequest request=new AddAttendanceRequest(row.getStudentId(), row.getScheduleId(),row.getStatus().toString().toLowerCase());
                TeacherService.addAttendance(request);
            }
            else{
                EditAttendanceRequest request=new EditAttendanceRequest(row.getAttendanceId(), row.getStatus().toString().toLowerCase());
                TeacherService.editAttendance(request);
            }
        }
        showAlert("Obecność zapisana!");
    }

    private void showAlert(String msg) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setHeaderText(null);
        alert.setContentText(msg);
        alert.showAndWait();
    }
    public void back() {
        Stage stage=(Stage) returnButton.getScene().getWindow();
        ViewLoader.goPrev(stage);
    }
}
