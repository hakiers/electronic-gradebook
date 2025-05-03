package com.egradebook.backend.controller;


import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Subject;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/student")
public class StudentController {

    // /grades -  pobierz swoje oceny get
    // /attendance - obecność get
    // /profile - dane osobowe get
    @GetMapping("/grades/{subject}")
    public ResponseEntity<?> getGrades(@PathVariable String subject, HttpSession session) {
        return null;
    }

    @GetMapping("/grades/all")
    public ResponseEntity<?> getAllGrades(HttpSession session) {
        return null;
    }
}
