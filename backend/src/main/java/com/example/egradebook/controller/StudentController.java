package com.example.egradebook.controller;

import org.springframework.web.bind.annotation.*;
import java.util.List;
import com.example.egradebook.model.Student;
import com.example.egradebook.service.StudentService;

@RestController
@RequestMapping("/api/students")
public class StudentController {
  private final StudentService ssvc;
  public StudentController(StudentService ss) { this.ssvc = ss; }

  @GetMapping public List<Student> getAll() {
    return ssvc.findAll();
  }
  @PostMapping public Student add(@RequestBody Student s) {
    return ssvc.save(s);
  }
  @PutMapping("/{id}")
  public Student update(@PathVariable Long id,@RequestBody Student s) {
    s.setId(id); return ssvc.save(s);
  }
  @DeleteMapping("/{id}")
  public void delete(@PathVariable Long id) {
    ssvc.deleteById(id);
  }
}
