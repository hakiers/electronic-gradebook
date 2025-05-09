package com.egradebook.backend.service;

import ch.qos.logback.core.joran.sanity.Pair;
import com.egradebook.backend.dto.AddGradeRequest;
import com.egradebook.backend.dto.EditGradeRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.Clazz;
import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Subject;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.utils.FindRepository;
import com.egradebook.backend.repository.utils.GetRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
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


    public void assignClassToTeacher(Long classId, Long teacherId) {
    }

    public void unassignClassFromTeacher(Long classId, Long teacherId) {
    }

    public void assignCourseToTeacher(Long courseId, Long teacherId) {
    }

    public void unassignCourseFromTeacher(Long courseId, Long teacherId) {
    }

    public void addGrade(AddGradeRequest request, HttpSession session) {
        //if (session.getAttribute("username") == null || !session.getAttribute("role").equals("teacher")) {
            //throw new UnauthorizedException("User is not a teacher");
        //}
        int teacher_id=2;
        //int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
       // boolean authorized = teacherRepository.canTeacherGradeStudent(teacher_id, request.getStudent_id(), request.getSubject_id());
        //if (!authorized) {
       //     throw new ForbiddenOperationException("Teacher is not authorized to grade student");
        //}
        teacherRepository.insertGrade(new Grade(request.getStudent_id(), request.getSubject_id(), teacher_id, request.getDate(), request.getGrade_value(), request.getDescription()));
    }

    public void editGrade(EditGradeRequest request, HttpSession session) {
        if (session.getAttribute("username") == null || !session.getAttribute("role").equals("teacher")) {
            throw new UnauthorizedException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        boolean updated = teacherRepository.updateGrade(request, teacher_id);
        if (!updated) {
            throw new ForbiddenOperationException("You can't edit this grade or it doesn't exist");
        }
    }

    public void removeGrade(int grade_id, HttpSession session) {
        if (session.getAttribute("username") == null || !session.getAttribute("role").equals("teacher")) {
            throw new UnauthorizedException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        boolean deleted = teacherRepository.deleteGrade(grade_id, teacher_id);
        if (!deleted) {
            throw new ForbiddenOperationException("You can't delete this grade or it doesn't exist");
        }
    }

    public List<Subject> getSubjects(HttpSession session) {
        if (session.getAttribute("username") == null || !session.getAttribute("role").equals("teacher")) {
            throw new UnauthorizedException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        return teacherRepository.getTeacherSubjects(teacher_id);
    }

    //getSubjects teacher for admin
    public List<Subject> getSubjects(int teacher_id, HttpSession session) {
        if (session.getAttribute("username") == null || !session.getAttribute("role").equals("admin")) {
            throw new UnauthorizedException("User is not a admin");
        }
        return teacherRepository.getTeacherSubjects(teacher_id);
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
        return studentRepository.getStudentsGrades(getRepository.getSubjectName(subject_id), student_id);
    }

}
