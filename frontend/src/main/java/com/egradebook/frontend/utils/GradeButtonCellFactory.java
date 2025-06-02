package com.egradebook.frontend.utils;

import com.egradebook.frontend.model.Grade;
import javafx.scene.control.Button;
import javafx.scene.control.TableCell;
import javafx.scene.control.TableColumn;
import javafx.scene.control.Tooltip;
import javafx.scene.layout.HBox;

import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;

public class GradeButtonCellFactory<T> {

    private final Function<T, List<Grade>> gradesExtractor;
    private final Consumer<Grade> onGradeClick;
    private final Function<Grade, Boolean> isSelected;

    public GradeButtonCellFactory(Function<T, List<Grade>> gradesExtractor,
                                  Consumer<Grade> onGradeClick,
                                  Function<Grade, Boolean> isSelected) {
        this.gradesExtractor = gradesExtractor;
        this.onGradeClick = onGradeClick;
        this.isSelected = isSelected;
    }

    public javafx.util.Callback<TableColumn<T, String>, TableCell<T, String>> create() {
        return column -> new TableCell<>() {
            @Override
            protected void updateItem(String item, boolean empty) {
                super.updateItem(item, empty);
                setText(null);
                setGraphic(null);

                if (!empty && getTableRow().getItem() != null) {
                    T rowItem = getTableRow().getItem();
                    List<Grade> grades = gradesExtractor.apply(rowItem);

                    HBox hbox = new HBox(5);
                    for (Grade grade : grades) {
                        Button gradeButton = new Button(String.valueOf(grade.getGrade_value()));

                        gradeButton.getStyleClass().add("grade-button");
                        gradeButton.getStyleClass().add("grade-" + (int) grade.getGrade_value());

                        //gradeButton.setTooltip(new Tooltip("Data: " + grade.getDate() + "\nOpis: " + grade.getDescription()));
                        Tooltip tooltip = new Tooltip("Data: " + grade.getDate() + "\nOpis: " + grade.getDescription());
                        Tooltip.install(gradeButton, tooltip);


                        if (isSelected != null && isSelected.apply(grade)) {
                            //gradeButton.setStyle("-fx-font-size: 12; -fx-padding: 3 6; -fx-background-color: #d3d3d3;");
                            gradeButton.getStyleClass().add("grade-selected");

                        } else {
                            //gradeButton.setStyle("-fx-font-size: 12; -fx-padding: 3 6;");
                        }

                        if (onGradeClick != null) {
                            gradeButton.setOnAction(event -> onGradeClick.accept(grade));
                        }

                        hbox.getChildren().add(gradeButton);
                    }
                    setGraphic(hbox);
                }
            }
        };
    }
}