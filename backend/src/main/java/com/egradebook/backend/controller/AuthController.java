package com.egradebook.backend.controller;

import com.egradebook.backend.request.UserChangePasswordRequest;
import com.egradebook.backend.request.UserLoginRequest;
import com.egradebook.backend.service.AuthService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/auth")
public class AuthController {

    @Autowired
    AuthService authService;

    @PostMapping("/login")
    public ResponseEntity<?> login(@RequestBody UserLoginRequest request, HttpSession session) {
        authService.loginUser(request, session);
        return ResponseEntity.ok(session.getAttribute("role"));
    }

    @PostMapping("/logout")
    public ResponseEntity<?> logout(HttpSession session) {
        session.invalidate();
        return ResponseEntity.ok("Logout successful");
    }

    @PostMapping("/change-password")
    public ResponseEntity<?> changePassword(@RequestBody UserChangePasswordRequest request, HttpSession session) {
        authService.changePassword(request, session);
        return ResponseEntity.ok("Password changed successfully");
    }
}
