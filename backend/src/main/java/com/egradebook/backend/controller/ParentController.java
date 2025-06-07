package com.egradebook.backend.controller;

import com.egradebook.backend.dto.StudentDto;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.request.AddSubjectGroupRequest;
import com.egradebook.backend.service.ClassService;
import com.egradebook.backend.service.ParentService;
import com.egradebook.backend.service.TeacherService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/parent")
public class ParentController {
    @Autowired
    private ParentService parentService;

    @GetMapping("/children")
    public ResponseEntity<?> getAllChildren(HttpSession session) {
        return ResponseEntity.ok(parentService.GetAllChildren(session));
    }
    @PostMapping("/children/grades")
    public ResponseEntity<?> getGrades(HttpSession session,@RequestBody StudentDto student) {
        Student created=new Student(student);
        return ResponseEntity.ok(parentService.getGrades(session,created));
    }
    @PostMapping("/children/schedule")
    public ResponseEntity<?> getSchedule(HttpSession session,@RequestBody StudentDto student) {
        Student created=new Student(student);
        return ResponseEntity.ok(parentService.getSchedule(session,created));
    }
    @PostMapping("/children/attendance")
    public ResponseEntity<?> getAttendance(HttpSession session,@RequestBody StudentDto student) {
        Student created=new Student(student);
        return ResponseEntity.ok(parentService.getAttendance(session,created));
    }

}
