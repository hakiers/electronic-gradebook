package com.egradebook.frontend.utils;

import com.egradebook.frontend.dto.SubjectWithGrades;
import com.egradebook.frontend.utils.GradeButtonCellFactory;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;

import java.util.List;
import java.util.function.Supplier;

public class GradesTableHelper {

    public static void configureColumns(
            TableColumn<SubjectWithGrades, String> subjectColumn,
            TableColumn<SubjectWithGrades, String> gradesColumn
    ) {
        subjectColumn.setCellValueFactory(cellData ->
                new SimpleStringProperty(cellData.getValue().getSubject().getName()));

        gradesColumn.setCellValueFactory(cellData -> new SimpleStringProperty(""));

        gradesColumn.setCellFactory(
                new GradeButtonCellFactory<>(
                        SubjectWithGrades::getGrades,
                        grade -> System.out.println("Kliknięto ocenę: " + grade.getGrade_value() + " (" + grade.getDescription() + ")"),
                        grade -> false
                ).create()
        );
    }

    public static void loadData(
            TableView<SubjectWithGrades> tableView,
            Supplier<List<SubjectWithGrades>> dataSupplier
    ) {
        List<SubjectWithGrades> grades = dataSupplier.get();
        if (grades != null) {
            ObservableList<SubjectWithGrades> observableGrades = FXCollections.observableArrayList(grades);
            tableView.setItems(observableGrades);
        }
    }
}
