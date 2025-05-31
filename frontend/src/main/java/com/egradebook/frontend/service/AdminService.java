package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.AddScheduleRequest;
import com.egradebook.frontend.model.Clazz;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class AdminService {
    private static final ObjectMapper mapper = new ObjectMapper();

    public static void addLessonToSchedule(AddScheduleRequest scheduleRequest) {
        try {
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(scheduleRequest);

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/schedule/add"))
                    .header("Content-Type", "application/json")
                    .PUT(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpClient client = HttpClient.newHttpClient();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Dodano lekcję do planu!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteLessonFromSchedule(int schedule_id) {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/schedule/remove/"+schedule_id))
                    .header("Content-Type", "application/json").DELETE()
                    .build();

            HttpClient client = HttpClient.newHttpClient();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() == 200) {
                System.out.println("Usunięto lekcję z planu!");
            } else {
                System.out.println("Błąd: " + response.body());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
