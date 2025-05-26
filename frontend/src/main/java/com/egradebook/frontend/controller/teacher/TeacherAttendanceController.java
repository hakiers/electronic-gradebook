package com.egradebook.frontend.controller.teacher;

import com.egradebook.frontend.model.Attendance;
import com.egradebook.frontend.model.Attendance.Status;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.service.TeacherService;
import com.egradebook.frontend.utils.StudentAttendanceRow;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import javafx.scene.control.cell.ComboBoxTableCell;
import javafx.util.StringConverter;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class TeacherAttendanceController {

    @FXML private DatePicker datePicker;
    @FXML private ComboBox<Integer> lessonComboBox;
    @FXML private TableView<StudentAttendanceRow> attendanceTable;
    @FXML private TableColumn<StudentAttendanceRow, String> nameColumn;
    @FXML private TableColumn<StudentAttendanceRow, Status> statusColumn;

    private final ObservableList<StudentAttendanceRow> attendanceRows = FXCollections.observableArrayList();
    private int selectedClassId=1; // ustawiany przez SelectClassController

    @FXML
    public void initialize() {
        lessonComboBox.setItems(FXCollections.observableArrayList(1,2,3,4,5,6,7,8));

        nameColumn.setCellValueFactory(data -> data.getValue().fullNameProperty());
        statusColumn.setCellValueFactory(data -> data.getValue().statusProperty());
        statusColumn.setCellFactory(ComboBoxTableCell.forTableColumn(FXCollections.observableArrayList(Status.values())));

        attendanceTable.setItems(attendanceRows);

        lessonComboBox.setOnAction(e -> loadAttendanceTable());
        datePicker.setOnAction(e -> loadAttendanceTable());
    }

    private void loadAttendanceTable() {
        if (datePicker.getValue() == null || lessonComboBox.getValue() == null) return;

        attendanceRows.clear();

        List<Student> students = TeacherService.getStudentsForClass(selectedClassId);
        List<Long> ids = students.stream().map(Student::getStudent_id).toList();

        List<Attendance> attendances = TeacherService.getAttendanceForDateAndLesson(
                datePicker.getValue(), lessonComboBox.getValue(), ids
        );

        for (Attendance a : attendances) {
            Student s = students.stream()
                    .filter(st -> st.getStudent_id() == a.getStudentId())
                    .findFirst()
                    .orElseThrow();

            StudentAttendanceRow row = new StudentAttendanceRow(a.getStudentId(), s.getName(), s.getSurname());
            row.setStatus(a.getStatus());
            attendanceRows.add(row);
        }
    }

    @FXML
    private void saveAttendance() {
        if (datePicker.getValue() == null || lessonComboBox.getValue() == null) {
            showAlert("Uzupełnij datę i numer lekcji");
            return;
        }

        List<Attendance> saved = new ArrayList<>();
        for (StudentAttendanceRow row : attendanceRows) {
            Attendance att = new Attendance(
                    0, // ID - tymczasowe
                    row.getStudentId(),
                    null, // scheduleId - opcjonalne
                    datePicker.getValue(),
                    lessonComboBox.getValue(),
                    row.getStatus()
            );
            saved.add(att);
        }

        // Tylko na potrzeby demonstracji
        TeacherService.saveMockAttendance(saved);
        showAlert("Obecność zapisana!");
    }

    private void showAlert(String msg) {
        Alert alert = new Alert(Alert.AlertType.INFORMATION);
        alert.setHeaderText(null);
        alert.setContentText(msg);
        alert.showAndWait();
    }

    public void setSelectedClassId(int classId) {
        this.selectedClassId = classId;
    }
}
