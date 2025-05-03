package com.egradebook.backend.controller;

import com.egradebook.backend.dto.AddGradeRequest;
import com.egradebook.backend.service.TeacherService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/teacher")
public class TeacherController {

    @Autowired
    TeacherService teacherService;

    // /add-grade post
    @PostMapping("/add-grade")
    public ResponseEntity<?> addGrade(@RequestBody AddGradeRequest request, HttpSession session) {
        teacherService.addGrade(request, session);
        return ResponseEntity.ok("Grade added successfully");
    }

    // /edit-grade put
    // /remove-grade delete
    // /class/1/students get
}
