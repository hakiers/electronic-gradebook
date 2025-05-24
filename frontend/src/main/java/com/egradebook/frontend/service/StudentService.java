package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.StudentGradesResponse;
import com.egradebook.frontend.model.Grade;
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
    public static Pair<Integer, StudentGradesResponse> getStudentGrades() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, new StudentGradesResponse("User not authenticated"));
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/student/grades/all"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                Map<String, List<Grade>> gradesMap = mapper.readValue(
                        response.body(),
                        new TypeReference<Map<String, List<Grade>>>() {}
                );
                return new Pair<>(response.statusCode(), new StudentGradesResponse(gradesMap));
            } else {
                return new Pair<>(response.statusCode(),
                        new StudentGradesResponse("Error: " + response.body()));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, new StudentGradesResponse("Internal server error"));
        }
    }

}
