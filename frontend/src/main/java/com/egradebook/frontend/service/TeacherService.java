package com.egradebook.frontend.service;

import com.egradebook.frontend.model.Attendance;
import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Lesson;
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
                    .uri(new URI("http://localhost:8080/api/class/" + id + "/students"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            List<Student> lista = StudentConverter.jsonToStudentList(response.body());
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
                    .uri(new URI("http://localhost:8080/api/teacher/students/" + student_id + "/subjects/" + subject_id + "/grades"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                List<Grade> lista = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Grade>>() {
                        }
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

        // Uzupełnij obecności — jeśli brak, to daj domyślnie PRESENT
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

    public static List<Integer> getAvailableLessonsForDate(LocalDate date) {
        String datePrefix = date.toString(); // np. "2025-05-24"

        return attendanceDatabase.keySet().stream()
                .filter(key -> key.startsWith(datePrefix))
                .map(key -> key.split("_")[1])              // pobierz numer lekcji jako String
                .map(Integer::parseInt)                     // zamień na int
                .distinct()
                .sorted()
                .toList();
    }

    private static final Map<Integer, List<Lesson>> classSchedules = new HashMap<>();

    static {
        // Przykład: Klasa ID = 1 ma zajęcia w poniedziałek i środę
        classSchedules.put(1, List.of(
                new Lesson(1, 1, 1, 1, 1, 1, 2, 101), // Poniedziałek, lekcja 2
                new Lesson(2, 1, 1, 2, 1, 1, 4, 102), // Poniedziałek, lekcja 4
                new Lesson(3, 1, 1, 3, 1, 3, 3, 103)  // Środa, lekcja 3
        ));
    }

    public static List<Lesson> getScheduleForClass(int classId) {
        return classSchedules.getOrDefault(classId, new ArrayList<>());
    }

    public static List<Integer> getLessonsFromSchedule(int classId, LocalDate date) {
        List<Lesson> schedule = getScheduleForClass(classId);

        int dayOfWeek = date.getDayOfWeek().getValue(); // 1 = Poniedziałek

        return schedule.stream()
                .filter(l -> l.getDay_od_week() == dayOfWeek)
                .map(Lesson::getLesson_number)
                .distinct()
                .sorted()
                .toList();
    }

    /**
     * Zwraca WSZYSTKIE lekcje z planu danej klasy na podany dzień,
     * niezależnie czy obecność już jest zapisana.
     */
    public static List<Integer> getAllScheduledLessonsForDate(int classId, LocalDate date) {
        return getLessonsFromSchedule(classId, date);
    }

    public static boolean isAttendanceAlreadySaved(LocalDate date, int lessonNumber) {
        String key = date.toString() + "_" + lessonNumber;
        return attendanceDatabase.containsKey(key);
    }
}
