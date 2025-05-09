package com.egradebook.backend.service;


import com.egradebook.backend.dto.StudentRegistrationRequest;
import com.egradebook.backend.dto.TeacherRegistrationRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.PeselAlreadyExistsException;
import com.egradebook.backend.model.LoginData;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Teacher;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.repository.utils.FindRepository;
import com.egradebook.backend.utils.Generator;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
    @Autowired
    UserRepository userRepository;
    @Autowired
    FindRepository findRepository;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    //tymczasowy admin
    public void createAdmin(){
        String hashedPassword = passwordEncoder.encode("admin");
        if(findRepository.findUserByUsername("admin") == null){
            userRepository.saveUser(new User(null, "admin", hashedPassword, "admin"));
        }
        else userRepository.changePassword("admin", hashedPassword);
    }
    //tymczasowy student
    public void createStudent(){
        String hashedPassword = passwordEncoder.encode("student");
        if(findRepository.findUserByUsername("student") == null){
            userRepository.saveUser(new User(null, "student", hashedPassword, "student"));
        }
        else userRepository.changePassword("student", hashedPassword);
    }

    public LoginData registerNewTeacher(TeacherRegistrationRequest request, HttpSession session) {
        if(session.getAttribute("role") == null || !session.getAttribute("role").equals("admin")){
            throw new ForbiddenOperationException("Only admin can register new teacher!");
        }
        if(findRepository.findUserByPeselAndRole(request.getPesel(), "teacher") != null){
            throw new PeselAlreadyExistsException("Pesel is already taken!");
        }
        LoginData loginData = Generator.generateLoginData(request.getName(), request.getSurname());
        String hashedPassword = passwordEncoder.encode(loginData.getPassword());
        userRepository.saveTeacher(new Teacher(null, request.getName(), request.getSurname(), request.getPesel(), request.getSubjects(), loginData.getUsername(), hashedPassword));
        return loginData;
    }

    public LoginData registerNewStudent(StudentRegistrationRequest request, HttpSession session) {
        if(session.getAttribute("role") == null || !session.getAttribute("role").equals("admin")){
            throw new ForbiddenOperationException("Only admin can register new teacher!");
        }
        if(findRepository.findUserByPeselAndRole(request.getPesel(), "student") != null){
            throw new PeselAlreadyExistsException("Pesel is already taken!");
        }

        LoginData loginData = Generator.generateLoginData(request.getName(), request.getSurname());
        String hashedPassword = passwordEncoder.encode(loginData.getPassword());
        userRepository.saveStudent(new Student(null, request.getName(), request.getSurname(), request.getPesel(), request.getClassId(), loginData.getUsername(), hashedPassword));
        return loginData;
    }

}
