package com.egradebook.backend.service;


import com.egradebook.backend.dto.UserChangePasswordRequest;
import com.egradebook.backend.dto.UserLoginRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.InvalidCredentialsException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.repository.utils.FindRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    UserRepository userRepository;
    @Autowired
    FindRepository findRepository;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public void loginUser(UserLoginRequest request, HttpSession session) {
        User user = findRepository.findUserByUsername(request.getUsername());
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
