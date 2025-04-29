package com.egradebook.backend.service;


import com.egradebook.backend.dto.StudentRegistrationRequest;
import com.egradebook.backend.dto.TeacherRegistrationRequest;
import com.egradebook.backend.dto.UserLoginRequest;
import com.egradebook.backend.model.LoginData;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Teacher;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.utils.generator;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public LoginData registerNewTeacher(TeacherRegistrationRequest request, HttpSession session) {
        if(session.getAttribute("role") == null || !session.getAttribute("role").equals("Admin")){
            throw new IllegalArgumentException("Only admin can register new teacher!");
        }
        if(userRepository.findUserByPesel(request.getPesel()) != null){
            throw new IllegalStateException("Pesel is already taken!");
        }
        LoginData loginData = generator.generateLoginData(request.getName(), request.getSurname());
        String hashedPassword = passwordEncoder.encode(loginData.getPassword());
        userRepository.saveTeacher(new Teacher(request.getName(), request.getSurname(), request.getPesel(), request.getSubjects(), loginData.getUsername(), hashedPassword));
        return loginData;
    }

    public LoginData registerNewStudent(StudentRegistrationRequest request, HttpSession session) {
        if(session.getAttribute("role") == null || !session.getAttribute("role").equals("Admin")){
            throw new IllegalArgumentException("Only admin can register new teacher!");
        }
        if(userRepository.findUserByPesel(request.getPesel()) != null){
            throw new IllegalStateException("Pesel is already taken!");
        }

        LoginData loginData = generator.generateLoginData(request.getName(), request.getSurname());
        String hashedPassword = passwordEncoder.encode(loginData.getPassword());
        userRepository.saveStudent(new Student(request.getName(), request.getSurname(), request.getPesel(), request.getClassId(), loginData.getUsername(), hashedPassword));
        return loginData;
    }

    public void loginUser(UserLoginRequest request, HttpSession session) {
        User user = userRepository.findUserByUsername(request.getUsername());
        if(user == null){
            throw new IllegalStateException("Invalid username or password!");
        }
        if(!passwordEncoder.matches(request.getPassword(), user.getPassword())){
            throw new IllegalStateException("Invalid username or password!");
        }
        session.setAttribute("username", user.getUsername());
        session.setAttribute("role", user.getRole());
    }

}
