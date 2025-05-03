package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.StudentRegistrationRequest;
import com.egradebook.frontend.dto.TeacherRegistrationRequest;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.CookieHandler;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class RegisterService {
    private static final HttpClient client = HttpClient.newBuilder()
            .cookieHandler(CookieHandler.getDefault())
            .build();
    private static final ObjectMapper mapper = new ObjectMapper();
    public static Pair<Integer,String> registerStudent(String name, String surname, String pesel, Integer classId)
    {
        try{
            StudentRegistrationRequest request= new StudentRegistrationRequest(name, surname, pesel, classId);
            String json =mapper.writeValueAsString(request);
            HttpRequest httpRequest = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/register/student"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();
            HttpResponse<String> response = client.send(httpRequest, HttpResponse.BodyHandlers.ofString());
            return new Pair<>(response.statusCode(), response.body());
        } catch (Exception e) {
            return new Pair<>(0,"");
        }
    }
    public static Pair<Integer,String> registerTeacher(String name, String surname, String pesel, List<String> subjects)
    {
        try{
            TeacherRegistrationRequest request= new TeacherRegistrationRequest(name, surname, pesel, subjects);
            String json =mapper.writeValueAsString(request);
            HttpRequest httpRequest = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/admin/register/teacher"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();
            HttpResponse<String> response = client.send(httpRequest, HttpResponse.BodyHandlers.ofString());
            return new Pair<>(response.statusCode(), response.body());
        } catch (Exception e) {
            return new Pair<>(0,"");
        }
    }
}
