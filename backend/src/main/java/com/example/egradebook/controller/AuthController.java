package com.example.egradebook.controller;

import org.springframework.web.bind.annotation.*;
import com.example.egradebook.model.User;
import com.example.egradebook.service.UserService;

@RestController
@RequestMapping("/api/auth")
public class AuthController {
  private final UserService userService;
  public AuthController(UserService us) { this.userService = us; }

  @PostMapping("/register")
  public String register(@RequestBody User u) {
    userService.register(u);
    return "Zarejestrowano";
  }
  @PostMapping("/login")
  public String login(@RequestBody User u) {
    return userService.login(u);
  }
}
