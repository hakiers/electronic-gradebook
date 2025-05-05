package com.egradebook.backend.service;

import com.egradebook.backend.dto.AddGradeRequest;
import com.egradebook.backend.dto.EditGradeRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.Grade;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.utils.FindRepository;
import com.egradebook.backend.repository.utils.GetRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

@Service
public class TeacherService {

    private final FindRepository findRepository;
    private final GetRepository getRepository;
    private final TeacherRepository teacherRepository;

    public TeacherService(FindRepository findRepository, GetRepository getRepository, TeacherRepository teacherRepository) {
        this.findRepository = findRepository;
        this.getRepository = getRepository;
        this.teacherRepository = teacherRepository;
    }

    public void assignClassToTeacher(Long classId, Long teacherId) {}
    public void unassignClassFromTeacher(Long classId, Long teacherId) {}
    public void assignCourseToTeacher(Long courseId, Long teacherId) {}
    public void unassignCourseFromTeacher(Long courseId, Long teacherId) {}

    public void addGrade(AddGradeRequest request, HttpSession session){
        if(session.getAttribute("user") == null || !session.getAttribute("role").equals("teacher")){
            throw new UnauthorizedException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        boolean authorized = teacherRepository.canTeacherGradeStudent(teacher_id, request.getStudent_id(), request.getSubject_id());
        if(!authorized){
            throw new ForbiddenOperationException("Teacher is not authorized to grade student");
        }
        teacherRepository.insertGrade(new Grade(request.getStudent_id(), request.getSubject_id(), teacher_id, request.getDate(), request.getGrade_value(), request.getDescription()));
    }

    public void editGrade(EditGradeRequest request, HttpSession session){
        if(session.getAttribute("user") == null || !session.getAttribute("role").equals("teacher")){
            throw new UnauthorizedException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        boolean updated = teacherRepository.updateGrade(request, teacher_id);
        if(!updated){
            throw new ForbiddenOperationException("You can't edit this grade or it doesn't exist");
        }
    }

    public void removeGrade(int grade_id, HttpSession session){
        if(session.getAttribute("user") == null || !session.getAttribute("role").equals("teacher")){
            throw new UnauthorizedException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        boolean deleted = teacherRepository.deleteGrade(grade_id, teacher_id);
        if(!deleted){
            throw new ForbiddenOperationException("You can't delete this grade or it doesn't exist");
        }
    }
}
