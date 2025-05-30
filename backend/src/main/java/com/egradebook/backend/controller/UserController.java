package com.egradebook.backend.controller;

import com.egradebook.backend.request.EditUserContactDataRequest;
import com.egradebook.backend.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/{id}/personal")
    public ResponseEntity<?> getUserPersonalInfo(@PathVariable int id, HttpSession session) {
        return ResponseEntity.ok(userService.getUserPersonalInfo(id, session));
    }

    @GetMapping("/{id}/contact")
    public ResponseEntity<?> getUserContactInfo(@PathVariable int id, HttpSession session) {
        return ResponseEntity.ok(userService.getUserContactInfo(id, session));
    }

    @PutMapping("/me/contact/edit")
    public ResponseEntity<?> editUserContactInfo(@RequestBody EditUserContactDataRequest request, HttpSession session) {
        return ResponseEntity.ok(userService.editUserContactInfo(request, session));
    }

}
