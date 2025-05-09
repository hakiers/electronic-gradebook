package com.egradebook.backend.controller;

import com.egradebook.backend.dto.AddGradeRequest;
import com.egradebook.backend.dto.EditGradeRequest;
import com.egradebook.backend.dto.RemoveGradeRequest;
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

    // /add-grade post
    @PostMapping("/add-grade")
    public ResponseEntity<?> addGrade(@RequestBody AddGradeRequest request, HttpSession session) {
        teacherService.addGrade(request, session);
        return ResponseEntity.ok("Grade added successfully");
    }

    // /edit-grade put
    @PutMapping("/edit-grade")
    public ResponseEntity<?> editGrade(@RequestBody EditGradeRequest request, HttpSession session) {
        teacherService.editGrade(request, session);
        return ResponseEntity.ok("Grade edited successfully");
    }

    // /remove-grade delete
    @DeleteMapping("/remove-grade")
    public ResponseEntity<?> removeGrade(@RequestBody RemoveGradeRequest request, HttpSession session) {
        teacherService.removeGrade(request.getGrade_id(), session);
        return ResponseEntity.ok("Grade removed successfully");
    }

    //second deletion option
    @DeleteMapping("/remove-grade/{id}")
    public ResponseEntity<?> removeGrade(@PathVariable int id, HttpSession session) {
        teacherService.removeGrade(id, session);
        return ResponseEntity.ok("Grade removed successfully");
    }

    //to do
    // Lista przedmiotów których uczy
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

}
