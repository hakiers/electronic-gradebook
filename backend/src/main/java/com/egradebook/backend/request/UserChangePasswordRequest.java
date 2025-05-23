package com.egradebook.backend.request;

public class UserChangePasswordRequest {
    final private String username;
    final private String newPassword;

    UserChangePasswordRequest(String username, String newPassword) {
        this.username = username;
        this.newPassword = newPassword;
    }

    public String getUsername() { return username; }
    public String getNewPassword() { return newPassword; }

}
