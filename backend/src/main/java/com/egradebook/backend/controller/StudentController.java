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


    @GetMapping("/grades/{subject_id}")
    public ResponseEntity<?> getGrades(@PathVariable int subject_id, HttpSession session) {
        return ResponseEntity.ok(studentService.getStudentGradesBySubject(subject_id, session));
    }

    @GetMapping("/grades/all")
    public ResponseEntity<?> getAllGrades(HttpSession session) {
        return ResponseEntity.ok(studentService.getStudentGrades(session));
    }

    @GetMapping("/schedule")
    public ResponseEntity<?> getSchedule(HttpSession session) {
        return ResponseEntity.ok(studentService.getSchedule(session));
    }

    @GetMapping("/attendance")
    public ResponseEntity<?> getAttendance(HttpSession session) {
        return null;
    }

}
