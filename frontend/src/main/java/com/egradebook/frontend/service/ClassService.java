package com.egradebook.frontend.service;

import com.egradebook.frontend.model.Clazz;
import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Lesson;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class ClassService {

    private static final ObjectMapper mapper = new ObjectMapper();

    public static Pair<Integer, List<Clazz>> getAllClasses() {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/class/all"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();
            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                List<Clazz> lista = mapper.readValue(
                        response.body(),
                        new TypeReference<List<Clazz>>() {
                        }
                );
                return new Pair<>(response.statusCode(), lista);
            } else {
                return new Pair<>(response.statusCode(),
                        null);
            }
        } catch (Exception e) {
            return new Pair<>(500, null);
        }
    }

    public static Pair<Integer, Clazz> getClazz(int class_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/class/"+class_id))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                Clazz clazz = mapper.readValue(
                        response.body(),
                        new TypeReference<Clazz>() {}
                );
                return new Pair<>(response.statusCode(), clazz);
            } else {
                return new Pair<>(response.statusCode(), null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }

    public static Pair<Integer,List<Lesson>> getSchedule(int class_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/class/schedule/"+class_id))
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
}
