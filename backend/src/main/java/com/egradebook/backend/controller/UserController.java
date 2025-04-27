package com.egradebook.backend.controller;

import com.egradebook.backend.dto.UserRegistrationRequest;
import com.egradebook.backend.model.User;
import com.egradebook.backend.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/users")
public class UserController {

    @Autowired
    UserService userService;

    @PostMapping("/register")
    public User registerUser(@RequestBody UserRegistrationRequest request) {
        return userService.registerNewUser(request.getUsername(), request.getPassword(), request.getRole());
    }
}
