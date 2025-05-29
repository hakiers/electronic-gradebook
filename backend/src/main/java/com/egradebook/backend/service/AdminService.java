package com.egradebook.backend.service;


import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.repository.SubjectRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.request.AssignTeacherRequest;
import com.egradebook.backend.request.StudentRegistrationRequest;
import com.egradebook.backend.request.TeacherRegistrationRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.utils.Generator;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminService {
    @Autowired
    UserRepository userRepository;
    @Autowired
    private TeacherRepository teacherRepository;
    @Autowired
    private ClassRepository classRepository;
    @Autowired
    private SubjectRepository subjectRepository;

    public LoginData registerNewTeacher(TeacherRegistrationRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can register new teacher!");
        }
        LoginData loginData = Generator.generateLoginData(request.getName(), request.getSurname());

        Teacher newteacher = new Teacher(request);
        newteacher.setUsername(loggedUser.getUsername());
        newteacher.setPassword(loggedUser.getPassword());
        newteacher.register();
        return loginData;
    }

    public LoginData registerNewStudent(StudentRegistrationRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can register new teacher!");
        }

        LoginData loginData = Generator.generateLoginData(request.getName(), request.getSurname());
        Student newstudent = new Student(request);
        newstudent.setUsername(loggedUser.getUsername());
        newstudent.setPassword(loggedUser.getPassword());
        newstudent.register();
        return loginData;
    }

    /*public void assignTeacher(AssignTeacherRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can assign teacher to class!");
        }
        Clazz clazz = classRepository.getClazz(request.getClass_id());
        Teacher teacher = teacherRepository.getTeacher(request.getTeacher_id());
        Subject subject = subjectRepository.getSubject(request.getSubject_id());

        clazz.assignTeacher(teacher, subject, request.getGroup_id());
    }*/

    public List<Subject> getSubjects(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view subjects!");
        }
        return subjectRepository.getAllSubjects();

    }

    public List<Teacher> getTeachers(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view teachers!");
        }
        return teacherRepository.getAllTeachers();
    }

}
