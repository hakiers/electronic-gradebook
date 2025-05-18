package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.AddGradeRequest;
import com.egradebook.frontend.model.Grade;
import com.egradebook.frontend.model.Student;
import com.egradebook.frontend.utils.StudentConverter;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;
import java.util.Map;

public class TeacherService {
    private static final ObjectMapper mapper = new ObjectMapper();
    public static Pair<Integer, List<Student>> getStudentInClass() {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/class/1/students"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            List<Student> lista= StudentConverter.jsonToStudentList(response.body());
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
                    .uri(new URI("http://localhost:8080/api/teacher/students/"+student_id+"/subjects/"+subject_id+"/grades"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                List<Grade> lista= mapper.readValue(
                        response.body(),
                        new TypeReference<List<Grade>>() {}
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

}
