package com.egradebook.backend.service;

import com.egradebook.backend.dto.ClazzDto;
import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.SubjectRepository;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.request.*;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.utils.Triple;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class TeacherService {

    @Autowired
    UserRepository userRepository;
    @Autowired
    TeacherRepository teacherRepository;
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private SubjectRepository subjectRepository;

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
        return teacher.getTeachSubjects();
    }

    public List<Subject> getSubjects(int teacher_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isAdmin()) {
            throw new UnauthorizedException("User is not a admin");
        }
        Teacher teacher = teacherRepository.getTeacher(teacher_id);
        return teacher.getTeachSubjects();
    }

    public List<Triple<ClazzDto, Subject, Group>> getClassSubjects(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }
        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        List<Triple<ClazzDto, Subject, Group>> classSubjects = teacher.getTeachClassSubject()
                .stream()
                .map(teachClassSubject -> {return new Triple<>(new ClazzDto(teachClassSubject.getFirst()), teachClassSubject.getSecond(), teachClassSubject.getThird());}).toList();
        return classSubjects;
    }

    public List<Triple<ClazzDto, Subject, Group>> getClassSubjects(int teacher_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isAdmin()) {
            throw new UnauthorizedException("User is not a admin");
        }
        Teacher teacher = teacherRepository.getTeacher(teacher_id);
        List<Triple<ClazzDto, Subject, Group>> classSubjects = teacher.getTeachClassSubject()
                .stream()
                .map(teachClassSubject -> {return new Triple<>(new ClazzDto(teachClassSubject.getFirst()), teachClassSubject.getSecond(), teachClassSubject.getThird());}).toList();
        return classSubjects;
    }

    public List<ClazzDto> getClassesForSubject(int subject_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }
        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        Subject subject = subjectRepository.getSubject(subject_id);

        List<ClazzDto> classes = teacher.getClassesForSubject(subject)
                .stream()
                .map(clazz -> new ClazzDto(clazz))
                .toList();
        return classes;
    }

    public List<ClazzDto> getClassesForSubject(int subject_id, int teacher_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isAdmin()) {
            throw new UnauthorizedException("User is not a admin");
        }
        Teacher teacher = teacherRepository.getTeacher(teacher_id);
        Subject subject = subjectRepository.getSubject(subject_id);
        List<ClazzDto> classes = teacher.getClassesForSubject(subject)
                .stream()
                .map(clazz -> new ClazzDto(clazz))
                .toList();
        return classes;
    }

    public List<Grade> getGradesForStudentAndSubject(int student_id, int subject_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }
        Student student = studentRepository.getStudent(student_id);
        Subject subject = subjectRepository.getSubject(subject_id);
        return student.getGrades(subject);
    }

    public void addAttendance(AddAttendanceRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }
        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        teacher.addAttendance(request);
    }

    public void editAttendance(EditAttendanceRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }
        Teacher teacher = teacherRepository.getTeacher(loggedUser.getRoleId());
        teacher.editAttendance(request);
    }

}
