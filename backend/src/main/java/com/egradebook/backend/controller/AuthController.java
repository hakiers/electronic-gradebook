package com.egradebook.backend.controller;

import com.egradebook.backend.dto.UserChangePasswordRequest;
import com.egradebook.backend.dto.UserLoginRequest;
import com.egradebook.backend.exception.InvalidCredentialsException;
import com.egradebook.backend.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/auth")
public class AuthController {

    @Autowired
    UserService userService;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody UserLoginRequest request, HttpSession session) {
        try{
            userService.loginUser(request, session);
            return ResponseEntity.ok(session.getAttribute("role"));
        } catch (InvalidCredentialsException e){
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(e.getMessage());
        }
    }

    @PostMapping("/logout")
    public ResponseEntity<?> logout(HttpSession session) {
        session.invalidate();
        return ResponseEntity.ok("Logout successful");
    }

    @PostMapping("/changepassword")
    public ResponseEntity<?> changePassword(@RequestBody UserChangePasswordRequest request, HttpSession session) {
        try{
            userService.changePassword(request, session);
            return ResponseEntity.ok("Password changed successfully");
        } catch (InvalidCredentialsException e){
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(e.getMessage());
        }
    }
}
