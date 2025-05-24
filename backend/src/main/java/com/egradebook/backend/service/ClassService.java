package com.egradebook.backend.service;

import com.egradebook.backend.model.Lesson;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.TeacherRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class ClassService {
    @Autowired
    TeacherRepository teacherRepository;
    @Autowired
    ClassRepository classRepository;
    @Autowired
    StudentRepository studentRepository;

    public List<Student> getStudentsInClass(int class_id, HttpSession session){
        //to do
        return null;
    }

    public Map<String, List<Lesson>> getScheulde(int class_id, HttpSession session) {
        // to do
        return null;
    }
}
