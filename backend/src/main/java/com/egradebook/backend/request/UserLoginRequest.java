package com.egradebook.backend.request;

public class UserLoginRequest {
    private final String username;
    private final String password;

    public UserLoginRequest(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getUsername() { return username; }
    public String getPassword() { return password; }
}
