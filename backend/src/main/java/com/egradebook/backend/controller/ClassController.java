package com.egradebook.backend.controller;

import com.egradebook.backend.service.ClassService;
import com.egradebook.backend.service.TeacherService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/class")
public class ClassController {
    @Autowired
    private ClassService classService;

    @GetMapping("/{class_id}/students")
    public ResponseEntity<?> getStudentsInClass(@PathVariable int class_id, HttpSession session) {
        return ResponseEntity.ok(classService.getStudentsInClass(class_id, session));
    }

}
