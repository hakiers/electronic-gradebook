package com.egradebook.frontend.service;

import com.egradebook.frontend.model.*;
import com.egradebook.frontend.request.AddAttendanceRequest;
import com.egradebook.frontend.request.EditAttendanceRequest;
import com.egradebook.frontend.utils.Triple;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.time.LocalDate;
import java.util.*;

public class TeacherService {
    public static int selectedClassId;
    public static int selectedSubjectId;
    public static int selectedGroupId;
    private static final ObjectMapper mapper = new ObjectMapper();

    public static Pair<Integer ,Teacher> getTeacher(int teacher_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/teacher/" + teacher_id))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if(response.statusCode() == 200) {
                Teacher teacher = mapper.readValue(response.body(), Teacher.class);
                return new Pair<>(response.statusCode(), teacher);
            }
            else {
                return new Pair<>(response.statusCode(), new Teacher());
            }

        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, new Teacher());
        }
    }

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

            List<Student> lista = mapper.readValue(response.body(), new TypeReference<List<Student>>() {});
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
    public static Pair<Integer, List<Triple<Clazz, Subject,Group>>> getClassSubjects() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/class_subject"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                List<Triple<Clazz,Subject,Group>> lista = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Triple<Clazz, Subject,Group>>>() {
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
    public static Pair<Integer,List<Lesson>> getSchedule() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/schedule"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<Lesson> lessons = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Lesson>>() {}
                );
                return new Pair<>(response.statusCode(), lessons);
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }
    public static Pair<Integer,List<Integer>> getSelectedSchedule(int dayOfWeek) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/"+selectedClassId+"/"+selectedSubjectId+"/schedule/"+dayOfWeek))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<Integer> lessons = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Integer>>() {}
                );
                return new Pair<>(response.statusCode(), lessons);
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }
    public static void addAttendance(AddAttendanceRequest req) {
        try {
            if(req.getStatus().equals("excused_abscence")) req=new AddAttendanceRequest(req.getStudent_id(), req.getSchedule_id(), "excused absence");
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return;
            }
            String json =mapper.writeValueAsString(req);
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/add-attendance"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void editAttendance(EditAttendanceRequest req) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return;
            } String json =mapper.writeValueAsString(req);
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/edit-attendance"))
                    .header("Content-Type", "application/json")
                    .PUT(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Attendance> getAttendanceForDateAndLesson(LocalDate date, int lessonNumber, List<Integer> studentIds) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new ArrayList<>();
            }

            // Budujemy URL z parametrami query
            StringBuilder urlBuilder = new StringBuilder("http://localhost:8080/api/teacher/attendance");
            urlBuilder.append("?date=").append(date.toString());
            urlBuilder.append("&lessonNumber=").append(lessonNumber);
            for (int id : studentIds) {
                urlBuilder.append("&studentIds=").append(id);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI(urlBuilder.toString()))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();
            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<Attendance> attendances = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Attendance>>() {}
                );
                return attendances;
            } else {
                System.err.println("Error: " + response.statusCode());
                return new ArrayList<>();
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    public static List<Attendance> getProcessedAttendance(LocalDate date, int lessonNumber, List<Integer> studentIds) {
        List<Attendance> records = getAttendanceForDateAndLesson(date, lessonNumber, studentIds);
        int schedule_id=records.get(0).getScheduleId();
        // Uzupełnij obecności — jeśli brak, to daj domyślnie PRESENT
        List<Attendance> fullList = new ArrayList<>();
        for (Integer studentId : studentIds) {
            Optional<Attendance> match = records.stream()
                    .filter(a -> a.getStudentId() == studentId)
                    .findFirst();

            fullList.add(match.orElse(
                    new Attendance(0, studentId,schedule_id, date.toString(), lessonNumber, Attendance.Status.PRESENCE)
            ));
        }
        return fullList;
    }

    private static List<Lesson> classSchedules = new ArrayList<>();

    public static List<Lesson> getScheduleForClass(int classId) {
        classSchedules=getSchedule().getValue();
        return classSchedules;
    }


    public static Pair<Integer, List<Teacher>> getTeachersForSubject(int subject_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/teachers/subject/" + subject_id))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if(response.statusCode() == 200) {
                List<Teacher> teachers = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Teacher>>() {}
                );
                return new Pair<>(response.statusCode(), teachers);
            }
            else {
                return new Pair<>(response.statusCode(), null);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }
}
