package com.egradebook.backend.service;

import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public User registerNewUser(String username, String rawPassword, String role) {
        if (userRepository.findUserByUsername(username) != null) {
            throw new IllegalArgumentException("Username is already taken!"); //mozna dodac wlasny wyjatek
        }
        String hashedPassword = passwordEncoder.encode(rawPassword);
        User newUser = new User(null, username, hashedPassword, role);
        return userRepository.saveUser(newUser);
    }
}
