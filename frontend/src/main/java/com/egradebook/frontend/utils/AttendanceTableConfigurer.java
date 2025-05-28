package com.egradebook.frontend.utils;

import com.egradebook.frontend.model.Attendance.Status;
import javafx.collections.FXCollections;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.ComboBoxTableCell;

public class AttendanceTableConfigurer {

    public static void configure(TableView<StudentAttendanceRow> tableView) {
        // Imię i nazwisko
        TableColumn<StudentAttendanceRow, String> nameCol = new TableColumn<>("Uczeń");
        nameCol.setCellValueFactory(cellData -> cellData.getValue().fullNameProperty());

        // Obecność (ComboBox edytowalny)
        TableColumn<StudentAttendanceRow, Status> statusCol = new TableColumn<>("Obecność");
        statusCol.setCellValueFactory(cellData -> cellData.getValue().statusProperty());
        statusCol.setCellFactory(column -> {
            ComboBoxTableCell<StudentAttendanceRow, Status> cell = new ComboBoxTableCell<>(
                    FXCollections.observableArrayList(Status.values())
            );
            cell.setConverter(new javafx.util.StringConverter<>() {
                @Override
                public String toString(Status status) {
                    return switch (status) {
                        case PRESENT -> "Obecny";
                        case ABSENT -> "Nieobecny";
                        case LATE -> "Spóźniony";
                    };
                }

                @Override
                public Status fromString(String string) {
                    return switch (string) {
                        case "Obecny" -> Status.PRESENT;
                        case "Nieobecny" -> Status.ABSENT;
                        case "Spóźniony" -> Status.LATE;
                        default -> throw new IllegalArgumentException("Nieznany status: " + string);
                    };
                }
            });
            return cell;
        });

        statusCol.setEditable(true);
        tableView.setEditable(true);

        tableView.getColumns().setAll(nameCol, statusCol);
    }
}
