package com.egradebook.frontend.controller.student;
import com.egradebook.frontend.model.Lesson;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
public class TimetableGenerator {
    public static ObservableList<Lesson> generateSampleTimetable() {
        ObservableList<Lesson> timetable = FXCollections.observableArrayList();

        // Przykładowe dane - dostosuj do swoich potrzeb
        timetable.add(new Lesson(1, 1, 101, 201, 0, 1, 1, 12)); // Poniedziałek, lekcja 1
        timetable.add(new Lesson(2, 1, 102, 202, 0, 1, 2, 15)); // Poniedziałek, lekcja 2
        timetable.add(new Lesson(3, 1, 103, 203, 0, 2, 1, 10)); // Wtorek, lekcja 1
        // ... dodaj więcej lekcji

        return timetable;
    }
}
