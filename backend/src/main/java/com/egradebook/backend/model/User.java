package com.egradebook.backend.model;


import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.request.UserChangePasswordRequest;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class User {
    private int id;
    private String username;
    private String password;
    private String role;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    private final UserRepository userRepository = new UserRepository();

    public User() {}

    public User(int id, String username, String password, String role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public void changePassword(String newPassword) {
        String newHashedPassword = passwordEncoder.encode(newPassword);
        userRepository.changePassword(username, newHashedPassword);
    }

    public boolean isPasswordCorrect(String password) {
        return passwordEncoder.matches(password, this.password);
    }

    public String getRole() {
        return role;
    }

    public boolean isAdmin() {
        return role.equals("admin");
    }

    public boolean isTeacher() {
        return role.equals("teacher");
    }

    public boolean isParent(){
        return role.equals("parent");
    }

    public boolean isStudent() {
        return role.equals("student");
    }

    public boolean isLoggedIn(){
        return role != null;
    }
}
