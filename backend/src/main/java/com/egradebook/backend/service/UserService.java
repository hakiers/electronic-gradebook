package com.egradebook.backend.service;


import com.egradebook.backend.dto.UserContactData;
import com.egradebook.backend.dto.UserPersonalData;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.request.EditUserContactDataRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public UserContactData getUserContactInfo(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isLoggedIn()) {
            throw new UnauthorizedException("You are not logged in!");
        }
        return loggedUser.contactInfo();
    }

    public UserPersonalData getUserPersonalInfo(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isLoggedIn()) {
            throw new UnauthorizedException("You are not logged in!");
        }
        return loggedUser.personalInfo();
    }

    public UserPersonalData getUserPersonalInfo(int user_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can access this user!");
        }
        User user = userRepository.findUserById(user_id);
        return user.personalInfo();
    }

    public UserContactData getUserContactInfo(int user_id, HttpSession session){
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can access this user!");
        }
        User user = userRepository.findUserById(user_id);
        return user.contactInfo();
    }

    public boolean editUserContactInfo(EditUserContactDataRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isLoggedIn()) {
            throw new UnauthorizedException("You are not logged in!");
        }
        return loggedUser.editContactInfo(request);
    }
}
