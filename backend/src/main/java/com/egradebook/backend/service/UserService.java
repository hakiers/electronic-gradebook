package com.egradebook.backend.service;

import com.egradebook.backend.dto.TeacherRegistrationRequest;
import com.egradebook.backend.dto.UserLoginRequest;
import com.egradebook.backend.dto.UserRegistrationRequest;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public void registerNewUser(UserRegistrationRequest request, HttpSession session) {

        if(session.getAttribute("role") == null || !session.getAttribute("role").equals("Admin")){
            throw new IllegalArgumentException("Only admin can register new user!");
        }
        if(userRepository.findUserByUsername(request.getUsername()) != null){
            throw new IllegalStateException("Username is already taken!");
        }

        String hashedPassword = passwordEncoder.encode(request.getPassword());
        User newUser = new User(null, request.getUsername(), hashedPassword, request.getRole());
        userRepository.saveUser(newUser);
    }

    public void registerNewTeacher(TeacherRegistrationRequest request, HttpSession session) {
        if(session.getAttribute("role") == null || !session.getAttribute("role").equals("Admin")){
            throw new IllegalArgumentException("Only admin can register new teacher!");
        }
        if(userRepository.findUserByPesel(request.getPesel()) != null){
            throw new IllegalStateException("Pesel is already taken!");
        }
        //dodajemy uzytkownika??
        //tworzymy username
        //tworzymy haslo
        String username;
        String password;
        String hashedPassword; //

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
