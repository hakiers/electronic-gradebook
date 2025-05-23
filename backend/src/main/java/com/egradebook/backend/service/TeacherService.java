package com.egradebook.backend.service;

import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.utils.FindRepository;
import com.egradebook.backend.request.AddGradeRequest;
import com.egradebook.backend.request.EditGradeRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.utils.GetRepository;
import com.egradebook.backend.request.RemoveGradeRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherService {

    @Autowired
    GetRepository getRepository;
    @Autowired
    TeacherRepository teacherRepository;
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private FindRepository findRepository;


    public void assignClassToTeacher(Long classId, Long teacherId) {
    }

    public void unassignClassFromTeacher(Long classId, Long teacherId) {
    }

    public void assignCourseToTeacher(Long courseId, Long teacherId) {
    }

    public void unassignCourseFromTeacher(Long courseId, Long teacherId) {
    }

    public void addGrade(AddGradeRequest request, HttpSession session) {
        User loggedUser = findRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }

        Teacher teacher = getTeacher(loggedUser.getId());
        teacher.addGrade(request);
    }

    public void editGrade(EditGradeRequest request, HttpSession session) {
        User loggedUser = findRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }

        Teacher teacher = getTeacher(loggedUser.getId());
        teacher.editGrade(request);
    }

    public void removeGrade(RemoveGradeRequest request, HttpSession session) {
        User loggedUser = findRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }

        Teacher teacher = getTeacher(loggedUser.getId());
        teacher.removeGrade(request);
    }

    public List<Subject> getSubjects(HttpSession session) {
        User loggedUser = findRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isTeacher()) {
            throw new UnauthorizedException("User is not a teacher");
        }

        Teacher teacher = getTeacher(loggedUser.getId());
        return teacher.getSubjects();
    }

    //getSubjects teacher for admin
    public List<Subject> getSubjects(int teacher_id, HttpSession session) {
        User loggedUser = findRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if (!loggedUser.isAdmin()) {
            throw new UnauthorizedException("User is not a admin");
        }
        Teacher teacher = getTeacher(teacher_id);
        return teacher.getSubjects();
    }

    public List<Clazz> getClassesForSubject(int subject_id, HttpSession session) {
        if (session.getAttribute("username") == null || !session.getAttribute("role").equals("teacher")) {
            throw new UnauthorizedException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        return teacherRepository.getTeacherClassesForSubject(teacher_id, subject_id);
    }

    //getClassesForSubject teacher for admin
    public List<Clazz> getClassesForSubject(int subject_id, int teacher_id, HttpSession session) {
        if (session.getAttribute("username") == null || !session.getAttribute("role").equals("admin")) {
            throw new UnauthorizedException("User is not a admin");
        }
        return teacherRepository.getTeacherClassesForSubject(teacher_id, subject_id);
    }

    public List<Grade> getGradesForStudentAndSubject(int student_id, int subject_id, HttpSession session) {
        if(session.getAttribute("username")  == null || !session.getAttribute("role").equals("teacher")){
            throw new UnauthorizedException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        if(!teacherRepository.canTeacherGradeStudent(teacher_id, student_id, subject_id)){
            throw new ForbiddenOperationException("Teacher is not authorized to get student grades");
        }
        return studentRepository.getStudentsGrades(subject_id, student_id);
    }

}
