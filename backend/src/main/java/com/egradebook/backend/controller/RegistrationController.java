package com.egradebook.backend.controller;

import com.egradebook.backend.dto.StudentRegistrationRequest;
import com.egradebook.backend.dto.TeacherRegistrationRequest;
import com.egradebook.backend.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/register")
public class RegistrationController {

    @Autowired
    UserService userService;

    @PostMapping("/teacher")
    public ResponseEntity<?> registerTeacher(@RequestBody TeacherRegistrationRequest request, HttpSession session) {
        try{
            return ResponseEntity.ok(userService.registerNewTeacher(request, session));
        }catch(IllegalStateException | IllegalArgumentException e){
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @PostMapping("/student")
    public ResponseEntity<?> registerStudent(@RequestBody StudentRegistrationRequest request, HttpSession session) {
        try{
            return ResponseEntity.ok(userService.registerNewStudent(request, session));
        }catch (IllegalStateException | IllegalArgumentException e){ //to do własne wyjątki
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }
}
