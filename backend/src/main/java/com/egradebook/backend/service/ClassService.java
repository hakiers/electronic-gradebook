package com.egradebook.backend.service;

import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.utils.GetRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class ClassService {
    @Autowired
    GetRepository getRepository;
    @Autowired
    TeacherRepository teacherRepository;
    @Autowired
    ClassRepository classRepository;

    public List<Student> getStudentsInClass(int class_id, HttpSession session){
        if (session.getAttribute("username") == null){
            throw new UnauthorizedException("User is not logged in!");
        }
        if(session.getAttribute("role").equals("teacher")){
            int teacher_id = getRepository.getTeacherId(session.getAttribute("username").toString());
            if(!teacherRepository.doesTeacherTeachClass(teacher_id, class_id)){
                throw new ForbiddenOperationException("Teacher doesn't teach this class");
            }
        }
        else if(!session.getAttribute("role").equals("admin")){
            throw new ForbiddenOperationException("You are not authorized to get students in this class");
        }
        return classRepository.getStudentsInClass(class_id);
    }
}
