package com.egradebook.backend.request;

public class UserChangePasswordRequest {
    private final String username;
    private final String newPassword;

    public UserChangePasswordRequest(String username, String newPassword) {
        this.username = username;
        this.newPassword = newPassword;
    }

    public String getUsername() { return username; }
    public String getNewPassword() { return newPassword; }

}
