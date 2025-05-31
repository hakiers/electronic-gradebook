package com.egradebook.backend.controller;

import com.egradebook.backend.request.AddSubjectGroupRequest;
import com.egradebook.backend.service.ClassService;
import com.egradebook.backend.service.TeacherService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/class")
public class ClassController {
    @Autowired
    private ClassService classService;

    @GetMapping("/all")
    public ResponseEntity<?> getAllClasses(HttpSession session) {
        return ResponseEntity.ok(classService.getAllClasses(session));
    }

    @GetMapping("/{class_id}")
    public ResponseEntity<?> getClass(@PathVariable int class_id, HttpSession session) {
        return ResponseEntity.ok(classService.getClass(class_id, session));
    }

    @GetMapping("/{class_id}/students")
    public ResponseEntity<?> getStudentsInClass(@PathVariable int class_id, HttpSession session) {
        return ResponseEntity.ok(classService.getStudentsInClass(class_id, session));
    }

    @GetMapping("/schedule/{class_id}")
    public ResponseEntity<?> getScheulde(@PathVariable int class_id, HttpSession session){
        return ResponseEntity.ok(classService.getSchedule(class_id, session));
    }

    @PostMapping("/subject-group/add")
    public ResponseEntity<?> addSubjectGroup(@RequestBody AddSubjectGroupRequest request, HttpSession session){
        classService.addSubjectGroup(request, session);
        return ResponseEntity.ok("Subject group added successfully");
    }

    @GetMapping("/profiles")
    public ResponseEntity<?> getAllClassProfiles(HttpSession session){
        return ResponseEntity.ok(classService.getAllClassProfiles(session));
    }
}
