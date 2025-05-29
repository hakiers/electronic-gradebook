package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.StudentGradesResponse;
import com.egradebook.frontend.dto.SubjectWithGrades;
import com.egradebook.frontend.model.Attendance;
import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Lesson;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;
import java.util.Map;

public class StudentService {
    private static final ObjectMapper mapper = new ObjectMapper();
    public static Pair<Integer, List<SubjectWithGrades>> getStudentGrades() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/student/grades/all"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<SubjectWithGrades> subjectGrades = mapper.readValue(
                        response.body(),
                        new TypeReference<List<SubjectWithGrades>>() {}
                );
                return new Pair<>(response.statusCode(), subjectGrades);
            } else {
                return new Pair<>(response.statusCode(), null);
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
                    .uri(new URI("http://localhost:8080/api/student/schedule"))
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
    public static Pair<Integer,List<Attendance>> getAttendance() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/student/attendance"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<Attendance> attendance = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Attendance>>() {}
                );
                return new Pair<>(response.statusCode(), attendance);
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }
}
