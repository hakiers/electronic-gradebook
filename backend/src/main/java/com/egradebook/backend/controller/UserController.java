package com.egradebook.backend.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/users")
public class UserController {
    // /me - info o zalogowanym uzytkowniku get
    // /{id} - info o użytkowniku (tylko dla admina) get
}
