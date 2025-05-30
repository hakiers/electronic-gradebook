package com.egradebook.backend.controller;

import com.egradebook.backend.request.*;
import com.egradebook.backend.model.Teacher;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.request.AddScheduleRequest;
import com.egradebook.backend.request.AssignTeacherRequest;
import com.egradebook.backend.request.StudentRegistrationRequest;
import com.egradebook.backend.request.TeacherRegistrationRequest;
import com.egradebook.backend.service.AdminService;
import com.egradebook.backend.service.ClassService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/admin")
public class AdminController {

    @Autowired
    AdminService adminService;
    @Autowired
    private ClassRepository classRepository;
    @Autowired
    private ClassService classService;

    @PostMapping("/register/teacher")
    public ResponseEntity<?> registerTeacher(@RequestBody TeacherRegistrationRequest request, HttpSession session) {
            return ResponseEntity.ok(adminService.registerNewTeacher(request, session));
    }

    @PostMapping("/register/student")
    public ResponseEntity<?> registerStudent(@RequestBody StudentRegistrationRequest request, HttpSession session) {
            return ResponseEntity.ok(adminService.registerNewStudent(request, session));
    }

    @GetMapping("/teachers")
    public ResponseEntity<?> getTeachers(HttpSession session) {
        return ResponseEntity.ok(adminService.getTeachers(session));
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

    @PutMapping("/schedule/add")
    public ResponseEntity<?> addSchedule(@RequestBody AddScheduleRequest request, HttpSession session) {
        classService.addLesson(request, session);
        return ResponseEntity.ok("Schedule added successfully");
    }

    //todo: dodac w bazie trigger ktory nie pozwoli na zmiane na null (obu lub jednego)
    @PutMapping("/edit-personaldata/{user_id}")
    public ResponseEntity<?> editPersonalInfo(@RequestBody EditUserPersonalDataRequest request, @PathVariable int user_id, HttpSession session){
        return ResponseEntity.ok(adminService.editUserPersonalInfo(request, user_id, session));
    }

}
