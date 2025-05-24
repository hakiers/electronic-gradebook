package com.egradebook.backend.service;

import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.request.AddGradeRequest;
import com.egradebook.backend.request.EditGradeRequest;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.request.RemoveGradeRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherService {

    @Autowired
    UserRepository userRepository;
    @Autowired
    TeacherRepository teacherRepository;

    public void addGrade(AddGradeRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }

        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        teacher.addGrade(request);
    }

    public void editGrade(EditGradeRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }

        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        teacher.editGrade(request);
    }

    public void removeGrade(RemoveGradeRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }

        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        teacher.removeGrade(request);
    }

    public List<Subject> getSubjects(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }

        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        return teacher.getSubjects();
    }

    public List<Subject> getSubjects(int teacher_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isAdmin()) {
            throw new UnauthorizedException("User is not a admin");
        }
        Teacher teacher = teacherRepository.getTeacher(teacher_id);
        return teacher.getSubjects();
    }

    public List<Clazz> getClassesForSubject(int subject_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }
        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        return teacher.getClassesForSubject(subject_id);
    }

    public List<Clazz> getClassesForSubject(int subject_id, int teacher_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isAdmin()) {
            throw new UnauthorizedException("User is not a admin");
        }
        Teacher teacher = teacherRepository.getTeacher(teacher_id);
        return teacher.getClassesForSubject(subject_id);
    }

}
