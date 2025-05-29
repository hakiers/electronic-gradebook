package com.egradebook.backend.request;

public class AddClassProfileRequest {
    String profile_shortcut;
    String description;

    public AddClassProfileRequest(String profile_shortcut, String description) {
        this.profile_shortcut = profile_shortcut;
        this.description = description;
    }

    public String getProfile_shortcut() { return profile_shortcut; }
    public String getDescription() { return description; }
}
