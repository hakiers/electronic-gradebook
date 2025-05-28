package com.egradebook.backend.service;


import com.egradebook.backend.request.UserChangePasswordRequest;
import com.egradebook.backend.request.UserLoginRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.InvalidCredentialsException;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    @Autowired
    UserRepository userRepository;

    public void loginUser(UserLoginRequest request, HttpSession session) {
        User user = userRepository.findUserByUsername(request.getUsername());
        if(!user.isPasswordCorrect(request.getPassword())) {
            throw new InvalidCredentialsException("Invalid username or password");
        }

        session.setAttribute("user_id", user.getUser_id());
        session.setAttribute("username", user.getUsername());
        session.setAttribute("role", user.getRole());
    }

    public void changePassword(UserChangePasswordRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        User user = userRepository.findUserByUsername(request.getUsername());

        if(!loggedUser.isAdmin() && user.getUser_id() != loggedUser.getUser_id()) {
            throw new ForbiddenOperationException("You can change password only for yourself or for admin!");
        }
        if(!user.isLoggedIn()){
            throw new InvalidCredentialsException("Invalid username");
        }

        user.changePassword(request.getNewPassword());
    }

}
