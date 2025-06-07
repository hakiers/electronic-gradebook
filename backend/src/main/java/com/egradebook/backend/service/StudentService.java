package com.egradebook.backend.service;

import com.egradebook.backend.dto.*;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.SubjectRepository;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.request.AssignStudentToGroupsRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class StudentService {

    @Autowired
    UserRepository userRepository;
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    private ClassRepository classRepository;
    @Autowired
    private SubjectRepository subjectRepository;


    public List<Grade> getStudentGradesBySubject(int subject_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isStudent()) {
            throw new UnauthorizedException("You are no student");
        }
        Student student = studentRepository.getStudent(loggedUser.getRoleId());
        Subject subject = subjectRepository.getSubject(subject_id);
        return student.getGrades(subject);
    }

    public List<Subject> getSubjectsByStudent(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isStudent()) {
            throw new UnauthorizedException("You are no student");
        }
        Student student = studentRepository.getStudent(loggedUser.getRoleId());
        return student.getSubjects();
    }

    public List<SubjectsWithGradesDto> getStudentGrades(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isStudent()) {
            throw new UnauthorizedException("You are no student");
        }
        Student student = studentRepository.getStudent(loggedUser.getRoleId());
        return student.getAllGrades();
    }

    public StudentProfile getStudentsProfile(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isStudent()) {
            throw new UnauthorizedException("You are no student");
        }
        Student student = studentRepository.getStudent(loggedUser.getRoleId());
        return student.profile();
    }

    public List<LessonDto> getSchedule(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isStudent()) {
            throw new UnauthorizedException("You are no student");
        }
        Student student = studentRepository.getStudent(loggedUser.getRoleId());
        List<LessonDto> schedule = student.getSchedule().stream()
                .map(lesson -> {
                    return new LessonDto(lesson);
                }).toList();
        return schedule;
    }

    public List<StudentAttendance> getAllAbsences(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isStudent()) {
            throw new UnauthorizedException("You are no student");
        }
        Student student = studentRepository.getStudent(loggedUser.getRoleId());
        return student.getAllStudentsAbsences();
    }

    public List<Attendance> getAttendanceByDate(HttpSession session, String date) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isStudent()) {
            throw new UnauthorizedException("You are no student");
        }
        Student student = studentRepository.getStudent(loggedUser.getRoleId());
        return student.getAttendanceByDate(date);
    }

    public List<SubjectGroupsDto> getStudentSubjectGroups(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isStudent()) {
            throw new UnauthorizedException("You are no student");
        }
        Student student = studentRepository.getStudent(loggedUser.getRoleId());
        return studentRepository.getStudentSubjectGroups(student.getStudent_id());
    }

}
