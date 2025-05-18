package com.egradebook.backend.service;

import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.Lesson;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.utils.GetRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class ClassService {
    @Autowired
    GetRepository getRepository;
    @Autowired
    TeacherRepository teacherRepository;
    @Autowired
    ClassRepository classRepository;
    @Autowired
    StudentRepository studentRepository;

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

    public Map<String, List<Lesson>> getScheulde(int class_id, HttpSession session){
        if(session.getAttribute("username") == null){
            throw new UnauthorizedException("User is not logged in!");
        }
        if(session.getAttribute("role").equals("student")){
            int student_id = getRepository.getStudentId(session.getAttribute("username").toString());
            if(!studentRepository.isStudentInClass(student_id, class_id))
                throw new ForbiddenOperationException("Student is not in this class");

            return classRepository.getScheulde(class_id);
        }
        else if(session.getAttribute("role").equals("admin")){
            return classRepository.getScheulde(class_id);
        }

        throw new ForbiddenOperationException("You are not authorized to get schedule of this class");
    }
}
