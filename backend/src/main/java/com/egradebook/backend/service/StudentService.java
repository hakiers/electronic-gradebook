package com.egradebook.backend.service;

import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.StudentProfile;
import com.egradebook.backend.model.Subject;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.utils.FindRepository;
import com.egradebook.backend.repository.utils.GetRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentService {
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    FindRepository findRepository;
    @Autowired
    GetRepository getRepository;

    public List<Grade> getStudentsGradesBySubject(String subject, HttpSession session) {
        if(session.getAttribute("username") == null){
            throw new UnauthorizedException("You are not logged in!");
        }
        int student_id = getRepository.getStudentId((String)session.getAttribute("username"));
        return studentRepository.getStudentsGrades(subject, student_id);
    }

    public List<Subject> getSubjectsByStudent(HttpSession session) {
        if(session.getAttribute("username") == null){
            throw new UnauthorizedException("You are not logged in!");
        }
        int student_id = getRepository.getStudentId((String)session.getAttribute("username"));
        return studentRepository.getStudentsSubjects(student_id);
    }

    public Map<String, List<Grade>> getStudentsGrades(HttpSession session) {
        if(session.getAttribute("username") == null){
            throw new UnauthorizedException("You are not logged in!");
        }
        int student_id = getRepository.getStudentId((String)session.getAttribute("username"));
        List<Subject> subjects = getSubjectsByStudent(session);
        Map<String, List<Grade>> gradesList = new HashMap<>();
        for (Subject subject : subjects) {
            gradesList.put(subject.getName(), getStudentsGradesBySubject(subject.getName(), session));
        }
        return gradesList;
    }


    public StudentProfile getStudentsProfile(HttpSession session) {
        if(session.getAttribute("username") == null){
            throw new UnauthorizedException("You are not logged in!");
        }
        int student_id = getRepository.getStudentId((String)session.getAttribute("username"));
        String name = "xd";
        return null;
    }

}
