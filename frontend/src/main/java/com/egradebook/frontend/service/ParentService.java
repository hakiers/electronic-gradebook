package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.SubjectWithGrades;
import com.egradebook.frontend.model.Student;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class ParentService {
    private static final ObjectMapper mapper = new ObjectMapper();
    public static Integer selectedStudentId;

    public static Pair<Integer, List<Student>> getAllChildren() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/parent/children"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                List<Student> subjectGrades = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Student>>() {}
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
}
