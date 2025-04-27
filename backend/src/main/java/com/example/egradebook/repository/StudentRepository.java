package com.example.egradebook.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.egradebook.model.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {}
