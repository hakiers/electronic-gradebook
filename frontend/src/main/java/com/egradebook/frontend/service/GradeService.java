package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.AddGradeRequest;
import com.egradebook.frontend.dto.EditGradeRequest;
import com.egradebook.frontend.dto.RemoveGradeRequest;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class GradeService {
    private static final ObjectMapper mapper = new ObjectMapper();
    public static void addGrade(AddGradeRequest request) {
        try {
            String json =mapper.writeValueAsString(request);

            HttpRequest httpRequest = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/add-grade"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();
            HttpResponse<String> response = UserService.client.send(httpRequest, HttpResponse.BodyHandlers.ofString());
            //System.out.println(response.statusCode());
            System.out.println(response.body());
            if (response.statusCode() == 200) {
                response.statusCode();
                response.body();
                return;
            }
            response.statusCode();
            response.body();
        } catch (Exception e) {
        }
    }
    public static void deleteGrade(RemoveGradeRequest request) {
        try {
            String json =mapper.writeValueAsString(request);

            HttpRequest httpRequest = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/remove-grade"))
                    .header("Content-Type", "application/json")
                    .method("DELETE", HttpRequest.BodyPublishers.ofString(json))
                    .build();
            HttpResponse<String> response = UserService.client.send(httpRequest, HttpResponse.BodyHandlers.ofString());
            //System.out.println(response.statusCode());
            System.out.println(response.body());
            if (response.statusCode() == 200) {
                response.statusCode();
                response.body();
                return;
            }
            response.statusCode();
            response.body();
        } catch (Exception e) {
        }
    }
    public static void editGrade(EditGradeRequest request) {
        try {
            String json =mapper.writeValueAsString(request);

            HttpRequest httpRequest = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/teacher/edit-grade"))
                    .header("Content-Type", "application/json")
                    .PUT(HttpRequest.BodyPublishers.ofString(json))
                    .build();
            HttpResponse<String> response = UserService.client.send(httpRequest, HttpResponse.BodyHandlers.ofString());
            //System.out.println(response.statusCode());
            System.out.println(response.body());
            if (response.statusCode() == 200) {
                response.statusCode();
                response.body();
                return;
            }
            response.statusCode();
            response.body();
        } catch (Exception e) {
        }
    }
}
