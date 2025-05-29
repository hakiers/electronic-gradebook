package com.egradebook.backend.controller;

import com.egradebook.backend.request.*;
import com.egradebook.backend.service.AdminService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    @PostMapping("/register/teacher")
    public ResponseEntity<?> registerTeacher(@RequestBody TeacherRegistrationRequest request, HttpSession session) {
            return ResponseEntity.ok(adminService.registerNewTeacher(request, session));
    }

    @PostMapping("/register/student")
    public ResponseEntity<?> registerStudent(@RequestBody StudentRegistrationRequest request, HttpSession session) {
            return ResponseEntity.ok(adminService.registerNewStudent(request, session));
    }

    @PostMapping("/teacher/assign")
    public ResponseEntity<?> assignTeacher(@RequestBody AssignTeacherRequest request, HttpSession session) {
        adminService.assignTeacher(request, session);
        return ResponseEntity.ok("Teacher assigned successfully");
    }

    @GetMapping("/subjects")
    public ResponseEntity<?> getSubjects(HttpSession session) {
        return ResponseEntity.ok(adminService.getSubjects(session));
    }

    @PostMapping("/add-classprofile")
    public ResponseEntity<?> addClassProfile(@RequestBody AddClassProfileRequest request, HttpSession session) {
        adminService.addNewClassProfile(request, session);
        return ResponseEntity.ok("Class profile added successfully");
    }

    @PostMapping("/add-class")
    public ResponseEntity<?> addClass(@RequestBody AddClassRequest request, HttpSession session){
        adminService.addNewClass(request, session);
        return ResponseEntity.ok("Class added successfully");
    }

    @PostMapping("/add-subject/{name}")
    public ResponseEntity<?> addSubject(HttpSession session, @PathVariable String name){
        adminService.addNewSubject(session, name);
        return ResponseEntity.ok("Subject added successfully");
    }
}
