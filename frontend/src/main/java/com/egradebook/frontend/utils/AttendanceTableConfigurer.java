package com.egradebook.frontend.utils;

import com.egradebook.frontend.model.Attendance.Status;
import javafx.collections.FXCollections;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.cell.ComboBoxTableCell;

public class AttendanceTableConfigurer {

    public static void configure(TableView<StudentAttendanceRow> tableView) {
        TableColumn<StudentAttendanceRow, String> nameCol = new TableColumn<>("Uczeń");
        nameCol.setCellValueFactory(cellData -> cellData.getValue().fullNameProperty());
        nameCol.setPrefWidth(400);
        nameCol.setMinWidth(400);
        nameCol.setMaxWidth(400);
        nameCol.setResizable(false);

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
                        case PRESENCE -> "Obecny";
                        case ABSENCE -> "Nieobecny";
                        case LATE -> "Spóźniony";
                        case EXCUSED_ABSCENCE -> "Usprawiedliwiony";
                    };
                }

                @Override
                public Status fromString(String string) {
                    return switch (string) {
                        case "Obecny" -> Status.PRESENCE;
                        case "Nieobecny" -> Status.ABSENCE;
                        case "Spóźniony" -> Status.LATE;
                        case "Usprawiedliwiony" ->Status.EXCUSED_ABSCENCE ;
                        default -> throw new IllegalArgumentException("Nieznany status: " + string);
                    };
                }
            });
            return cell;
        });

        statusCol.setPrefWidth(200);
        statusCol.setMinWidth(200);
        statusCol.setMaxWidth(200);
        statusCol.setResizable(false);
        statusCol.setEditable(true);
        tableView.setEditable(true);

        tableView.getColumns().setAll(nameCol, statusCol);
    }
}
