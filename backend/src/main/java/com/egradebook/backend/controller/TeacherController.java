package com.egradebook.backend.controller;

import com.egradebook.backend.request.*;
import com.egradebook.backend.service.StudentService;
import com.egradebook.backend.service.TeacherService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/teacher")
public class TeacherController {

    @Autowired
    TeacherService teacherService;
    @Autowired
    private StudentService studentService;

    // /add-grade post
    @PostMapping("/add-grade")
    public ResponseEntity<?> addGrade(@RequestBody AddGradeRequest request, HttpSession session) {
        teacherService.addGrade(request, session);
        return ResponseEntity.ok("Grade added successfully");
    }

    @PutMapping("/edit-grade")
    public ResponseEntity<?> editGrade(@RequestBody EditGradeRequest request, HttpSession session) {
        teacherService.editGrade(request, session);
        return ResponseEntity.ok("Grade edited successfully");
    }

    @DeleteMapping("/remove-grade")
    public ResponseEntity<?> removeGrade(@RequestBody RemoveGradeRequest request, HttpSession session) {
        teacherService.removeGrade(request, session);
        return ResponseEntity.ok("Grade removed successfully");
    }

    @GetMapping("/subjects")
    public ResponseEntity<?> getSubjects(HttpSession session) {
        return ResponseEntity.ok(teacherService.getSubjects(session));
    }

    //dla admina
    @GetMapping("/{teacher_id}/subjects")
    public ResponseEntity<?> getSubjects(@PathVariable int teacher_id, HttpSession session) {
        return ResponseEntity.ok(teacherService.getSubjects(teacher_id, session));
    }

    // Lista klas dla przedmiotu
    @GetMapping("/subjects/{subject_id}/classes")
    public ResponseEntity<?> getClassesForSubject(@PathVariable int subject_id, HttpSession session) {
        return ResponseEntity.ok(teacherService.getClassesForSubject(subject_id, session));
    }

    //dla admina
    @GetMapping("/{teacher_id}/subjects/{subject_id}/classes")
    public ResponseEntity<?> getClassesForSubject(@PathVariable int teacher_id, @PathVariable int subject_id, HttpSession session) {
        return ResponseEntity.ok(teacherService.getClassesForSubject(teacher_id, subject_id, session));
    }

    // Oceny ucznia z przedmiotu
    @GetMapping("/students/{student_id}/subjects/{subject_id}/grades")
    public ResponseEntity<?> getGradesForStudentAndSubject(@PathVariable int student_id, @PathVariable int subject_id, HttpSession session) {
        return ResponseEntity.ok(teacherService.getGradesForStudentAndSubject(student_id, subject_id, session));
    }

    @GetMapping("/class_subject")
    public ResponseEntity<?> getClassSubjects(HttpSession session) {
        return ResponseEntity.ok(teacherService.getClassSubjects(session));
    }

    @GetMapping("/{teacher_id}/class_subject")
    public ResponseEntity<?> getClassSubjects(@PathVariable int teacher_id, HttpSession session) {
        return ResponseEntity.ok(teacherService.getClassSubjects(teacher_id, session));
    }


    @PostMapping("/add-attendance")
    public ResponseEntity<?> addAttendance(@RequestBody AddAttendanceRequest request, HttpSession session) {
        teacherService.addAttendance(request, session);
        return ResponseEntity.ok("Attendance added successfully");
    }

    @PutMapping("/edit-attendance")
    public ResponseEntity<?> editAttendance(@RequestBody EditAttendanceRequest request, HttpSession session) {
        teacherService.editAttendance(request, session);
        return ResponseEntity.ok("Attendance edited successfully");
    }

    @GetMapping("/schedule")
    public ResponseEntity<?> getSchedule(HttpSession session) {
        return ResponseEntity.ok(teacherService.getSchedule(session));
    }

    @GetMapping("/{class_id}/{subject_id}/schedule/{dayOfWeek}")
    public ResponseEntity<?> getClassSubjectSchedule(@PathVariable int class_id,@PathVariable int subject_id,@PathVariable int dayOfWeek,   HttpSession session) {
        return ResponseEntity.ok(teacherService.getClassSubjectSchedule(class_id, subject_id,dayOfWeek, session));
    }

}
