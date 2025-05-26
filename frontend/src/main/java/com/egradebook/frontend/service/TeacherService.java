package com.egradebook.frontend.service;

import com.egradebook.frontend.model.Attendance;
import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.utils.StudentConverter;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.LocalDate;
import java.util.*;

public class TeacherService {
    private static final ObjectMapper mapper = new ObjectMapper();
    public static Pair<Integer, List<Student>> getStudentInClass(int id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/class/"+id+"/students"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            List<Student> lista= StudentConverter.jsonToStudentList(response.body());
            return new Pair<>(response.statusCode(), lista);
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }
    public static Pair<Integer, List<Grade>> getGradesForStudent(int student_id, int subject_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/students/"+student_id+"/subjects/"+subject_id+"/grades"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                List<Grade> lista= mapper.readValue(
                        response.body(),
                        new TypeReference<List<Grade>>() {}
                );
                return new Pair<>(response.statusCode(), lista);
            } else {
                return new Pair<>(response.statusCode(),
                        null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }
    private static final Map<Integer, List<Student>> studentDatabase = new HashMap<>();

    static {
        // Przykład dla klasy ID 1
        studentDatabase.put(1, List.of(
                new Student(1L, "Jan", "Kowalski", "01234567890", 1, "jkowalski", "password"),
                new Student(2L, "Anna", "Nowak", "11234567890", 1, "anowak", "password"),
                new Student(3L, "Piotr", "Zieliński", "21234567890", 1, "pzielinski", "password")
        ));

        // Można dodać kolejne klasy, np. ID 2
        studentDatabase.put(2, List.of(
                new Student(4L, "Kasia", "Wiśniewska", "31234567890", 2, "kwisniewska", "password"),
                new Student(5L, "Tomek", "Mazur", "41234567890", 2, "tmazur", "password")
        ));
    }

    public static List<Student> getStudentsForClass(int classId) {
        return studentDatabase.getOrDefault(classId, new ArrayList<>());
    }
    private static final Map<String, List<Attendance>> attendanceDatabase = new HashMap<>();

    static {
        // Klucz: data+lekcja -> Lista obecności
        attendanceDatabase.put("2025-05-24_2", List.of(
                new Attendance(1, 1, null, LocalDate.of(2025, 5, 24), 2, Attendance.Status.PRESENT),
                new Attendance(2, 2, null, LocalDate.of(2025, 5, 24), 2, Attendance.Status.ABSENT),
                new Attendance(3, 9, null, LocalDate.of(2025, 5, 24), 2, Attendance.Status.LATE)
        ));
    }

    public static List<Attendance> getAttendanceForDateAndLesson(LocalDate date, int lessonNumber, List<Long> studentIds) {
        String key = date.toString() + "_" + lessonNumber;
        List<Attendance> records = attendanceDatabase.getOrDefault(key, new ArrayList<>());

        // Dodaj default PRESENT jeśli brak w danych
        List<Attendance> fullList = new ArrayList<>();
        for (Long studentId : studentIds) {
            Optional<Attendance> match = records.stream()
                    .filter(a -> a.getStudentId() == studentId)
                    .findFirst();

            fullList.add(match.orElse(
                    new Attendance(0, studentId.intValue(), null, date, lessonNumber, Attendance.Status.PRESENT)
            ));
        }
        return fullList;
    }

    public static void saveMockAttendance(List<Attendance> list) {
        if (list.isEmpty()) return;
        Attendance example = list.get(0);
        String key = example.getDate() + "_" + example.getLessonNumber();
        attendanceDatabase.put(key, new ArrayList<>(list));
    }
}
