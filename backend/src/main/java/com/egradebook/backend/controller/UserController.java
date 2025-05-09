package com.egradebook.backend.controller;

import com.egradebook.backend.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/users")
public class UserController {
    @Autowired
    UserService userService;
    // /me/personal - info o zalogowanym uzytkowniku get
    // /me/contact
    // /{id} - info o użytkowniku (tylko dla admina) get
    @GetMapping("/me/personal")
    public ResponseEntity<?> getUserPersonalInfo(HttpSession session) {
        //imie, nazwisko, rola
        return ResponseEntity.ok(userService.getUserPersonalInfo(session));
    }

    @GetMapping("/me/contact")
    public ResponseEntity<?> getUserContactInfo(HttpSession session) {
        //numer telefonu, email, adres
        return ResponseEntity.ok(userService.getUserContactInfo(session));
    }
}
