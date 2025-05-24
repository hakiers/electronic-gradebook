package com.egradebook.backend.service;


import com.egradebook.backend.request.StudentRegistrationRequest;
import com.egradebook.backend.request.TeacherRegistrationRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.model.LoginData;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Teacher;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.utils.Generator;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    UserRepository userRepository;

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

}
