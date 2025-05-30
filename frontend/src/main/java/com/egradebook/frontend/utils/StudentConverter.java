package com.egradebook.frontend.utils;

import com.egradebook.frontend.model.Student;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.List;

public class StudentConverter {
    private static final ObjectMapper objectMapper = new ObjectMapper();

    public static List<Student> jsonToStudentList(String json) throws IOException {
        return objectMapper.readValue(json, new TypeReference<List<Student>>() {});
    }
}