package com.egradebook.frontend.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

public class FrontendLoginRequest {
    private final String username;
    private final String password;

    public FrontendLoginRequest(String username, String password) {
        this.username = username;
        this.password = password;
    }
    @JsonProperty("username")
    public String getUsername() { return username; }
    @JsonProperty("password")
    public String getPassword() { return password; }
}
