package com.egradebook.frontend.utils;

import com.egradebook.frontend.model.Attendance;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.util.*;
import java.util.function.Supplier;

public class AttendanceTableHelper {

    public static final int MAX_LESSONS = 8;

    public static void configureColumns(
            TableColumn<AttendanceRow, String> dateColumn,
            List<TableColumn<AttendanceRow, String>> lessonColumns
    ) {
        dateColumn.setCellValueFactory(cellData ->
                new SimpleStringProperty(cellData.getValue().getDate()));

        for (int i = 1; i <= lessonColumns.size(); i++) {
            final int lessonNumber = i;
            TableColumn<AttendanceRow, String> column = lessonColumns.get(i - 1);
            column.setCellValueFactory(cellData ->
                    new SimpleStringProperty(cellData.getValue().getLessonStatus(lessonNumber)));
        }
    }

    public static void loadData(
            TableView<AttendanceRow> table,
            Supplier<List<Attendance>> attendanceSupplier,
            TableColumn<AttendanceRow, String> dateColumn
    ) {
        List<Attendance> rawData = attendanceSupplier.get();

        Map<String, AttendanceRow> grouped = new TreeMap<>();
        for (Attendance att : rawData) {
            grouped.putIfAbsent(att.getDate(), new AttendanceRow(att.getDate()));
            grouped.get(att.getDate()).setStatus(att.getLessonNumber(), getStatusSymbol(att.getStatus()));
        }

        ObservableList<AttendanceRow> rows = FXCollections.observableArrayList(grouped.values());
        table.setItems(rows);

        table.getSortOrder().clear();
        dateColumn.setSortType(TableColumn.SortType.DESCENDING);
        table.getSortOrder().add(dateColumn);
    }

    private static String getStatusSymbol(Attendance.Status status) {
        return switch (status) {
            case PRESENCE -> "✓";
            case ABSENCE -> "✗";
            case LATE -> "⌚";
            case EXCUSED_ABSCENCE -> "U";
        };
    }

    // Użyj tej klasy jako zewnętrznej (można przenieść do osobnego pliku)

}
