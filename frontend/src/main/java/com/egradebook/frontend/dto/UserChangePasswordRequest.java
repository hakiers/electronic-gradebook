package com.egradebook.frontend.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class UserChangePasswordRequest {
    final private String username;
    final private String newPassword;
    public UserChangePasswordRequest(String username, String newPassword) {
        this.username = username;
        this.newPassword = newPassword;
    }
    @JsonProperty("username")
    public String getUsername() { return username; }
    @JsonProperty("newPassword")
    public String getNewPassword() { return newPassword; }
}
