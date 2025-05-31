package com.egradebook.frontend.service;

import com.egradebook.frontend.model.Subject;
import com.egradebook.frontend.model.Teacher;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class SubjectService {
    private static final ObjectMapper mapper = new ObjectMapper();

    public static Pair<Integer, List<Subject>> getAllSubjects() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/subjects"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if(response.statusCode() == 200) {
                List<Subject> subjects = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Subject>>() {}
                );

                return new Pair<>(200, subjects);
            }

            return new Pair<>(response.statusCode(), null);

        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }
}
