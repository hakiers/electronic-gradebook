package com.example.egradebook.service;

import org.springframework.stereotype.Service;
import com.example.egradebook.model.Student;
import com.example.egradebook.repository.StudentRepository;
import java.util.List;

@Service
public class StudentService {
  private final StudentRepository sr;
  public StudentService(StudentRepository sr) { this.sr = sr; }
  public List<Student> findAll() { return sr.findAll(); }
  public Student save(Student s) { return sr.save(s); }
  public void deleteById(Long id) { sr.deleteById(id); }
}
