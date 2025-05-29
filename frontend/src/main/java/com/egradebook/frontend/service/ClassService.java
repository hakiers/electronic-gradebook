package com.egradebook.frontend.service;

import com.egradebook.frontend.model.Clazz;
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
}
