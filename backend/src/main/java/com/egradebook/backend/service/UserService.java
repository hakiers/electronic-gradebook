package com.egradebook.backend.service;


import com.egradebook.backend.dto.StudentRegistrationRequest;
import com.egradebook.backend.dto.TeacherRegistrationRequest;
import com.egradebook.backend.dto.UserChangePasswordRequest;
import com.egradebook.backend.dto.UserLoginRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.InvalidCredentialsException;
import com.egradebook.backend.exception.PeselAlreadyExistsException;
import com.egradebook.backend.exception.UnauthorizedException;
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

    //tymczasowy admin
    public void createAdmin(){
        String hashedPassword = passwordEncoder.encode("admin");
        if(userRepository.findUserByUsername("admin") == null){
            userRepository.saveUser(new User(null, "admin", hashedPassword, "admin"));
        }
        else userRepository.changePassword("admin", hashedPassword);
    }
    //tymczasowy student
    public void createStudent(){
        String hashedPassword = passwordEncoder.encode("student");
        if(userRepository.findUserByUsername("student") == null){
            userRepository.saveUser(new User(null, "student", hashedPassword, "student"));
        }
        else userRepository.changePassword("student", hashedPassword);
    }

    public LoginData registerNewTeacher(TeacherRegistrationRequest request, HttpSession session) {
        if(session.getAttribute("role") == null || !session.getAttribute("role").equals("admin")){
            throw new ForbiddenOperationException("Only admin can register new teacher!");
        }
        if(userRepository.findUserByPesel(request.getPesel()) != null){
            throw new PeselAlreadyExistsException("Pesel is already taken!");
        }
        LoginData loginData = generator.generateLoginData(request.getName(), request.getSurname());
        String hashedPassword = passwordEncoder.encode(loginData.getPassword());
        userRepository.saveTeacher(new Teacher(request.getName(), request.getSurname(), request.getPesel(), request.getSubjects(), loginData.getUsername(), hashedPassword));
        return loginData;
    }

    public LoginData registerNewStudent(StudentRegistrationRequest request, HttpSession session) {
        if(session.getAttribute("role") == null || !session.getAttribute("role").equals("admin")){
            throw new ForbiddenOperationException("Only admin can register new student!");
        }
        if(userRepository.findUserByPesel(request.getPesel()) != null){
            throw new PeselAlreadyExistsException("Pesel is already taken!");
        }

        LoginData loginData = generator.generateLoginData(request.getName(), request.getSurname());
        String hashedPassword = passwordEncoder.encode(loginData.getPassword());
        userRepository.saveStudent(new Student(request.getName(), request.getSurname(), request.getPesel(), request.getClassId(), loginData.getUsername(), hashedPassword));
        return loginData;
    }

    public void loginUser(UserLoginRequest request, HttpSession session) {
        User user = userRepository.findUserByUsername(request.getUsername());
        if(user == null || !passwordEncoder.matches(request.getPassword(), user.getPassword())){
            throw new InvalidCredentialsException("Invalid username or password");
        }

        session.setAttribute("username", user.getUsername());
        session.setAttribute("role", user.getRole());
    }

    public void changePassword(UserChangePasswordRequest request, HttpSession session) {
        if(session.getAttribute("username") == null){
            throw new UnauthorizedException("You are not logged in!");
        }
        if(!session.getAttribute("username").equals(request.getUsername()) && !session.getAttribute("role").equals("Admin")){
            throw new ForbiddenOperationException("You can change password only for yourself or for admin!");
        }

        String newHashedPassword = passwordEncoder.encode(request.getNewPassword());
        userRepository.changePassword(request.getUsername(), newHashedPassword);
    }

}
