package com.egradebook.backend.controller;


import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Subject;
import com.egradebook.backend.service.StudentService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/student")
public class StudentController {
    @Autowired
    StudentService studentService;

    @GetMapping("/grades")
    public ResponseEntity<?> getGrades(@PathVariable int subject_id, HttpSession session) {
        return ResponseEntity.ok(studentService.getStudentsGradesBySubject(subject_id, session));
    }

}
