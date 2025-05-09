package com.egradebook.backend.service;


import com.egradebook.backend.dto.StudentRegistrationRequest;
import com.egradebook.backend.dto.TeacherRegistrationRequest;
import com.egradebook.backend.dto.UserChangePasswordRequest;
import com.egradebook.backend.dto.UserLoginRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.InvalidCredentialsException;
import com.egradebook.backend.exception.PeselAlreadyExistsException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.repository.utils.GetRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private GetRepository getRepository;

    public UserContactData getUserContactInfo(HttpSession session) {
        if(session.getAttribute("username") == null) {
            throw new UnauthorizedException("You are not logged in!");
        }
        int user_id = (int) session.getAttribute("user_id");
        return userRepository.getUserContactData(user_id);
    }

    public UserPersonalData getUserPersonalInfo(HttpSession session) {
        if(session.getAttribute("username") == null) {
            throw new UnauthorizedException("You are not logged in!");
        }
        int user_id = (int)session.getAttribute("userId");
        return userRepository.getUserPersonalData(user_id);
    }

    public UserPersonalData getUserPersonalInfo(int user_id, HttpSession session) {
        if(session.getAttribute("username") == null) {
            throw new UnauthorizedException("You are not logged in!");
        }
        if(!session.getAttribute("role").equals("admin")){
            throw new ForbiddenOperationException("Only admin can access this user!");
        }
        return userRepository.getUserPersonalData(user_id);
    }

    public UserContactData getUserContactInfo(int user_id, HttpSession session){
        if(session.getAttribute("username") == null) {
            throw new UnauthorizedException("You are not logged in!");
        }
        if(!session.getAttribute("role").equals("admin")){
            throw new ForbiddenOperationException("Only admin can access this user!");
        }
        return userRepository.getUserContactData(user_id);
    }
}
