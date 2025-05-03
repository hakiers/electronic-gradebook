package com.egradebook.backend.service;

import com.egradebook.backend.dto.AddGradeRequest;
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
        if(session.getAttribute("user") == null || !session.getAttribute("user").equals("teacher")){
            throw new RuntimeException("User is not a teacher");
        }
        int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
        if(!teacherRepository.getTeacherSubjectsWithId(teacher_id).contains(request.getSubject_id())){
            throw new RuntimeException("Teacher does not teach this subject");
        }



    }
}
