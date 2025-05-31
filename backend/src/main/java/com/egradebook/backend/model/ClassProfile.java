package com.egradebook.backend.model;

public class ClassProfile {
    private int profile_id;
    private String profile_shortcut;
    private String description;

    public ClassProfile(){

    }
    public ClassProfile(int profile_id, String profile_shortcut, String description) {
        this.profile_id = profile_id;
        this.profile_shortcut = profile_shortcut;
        this.description = description;
    }

    public int getProfile_id() { return profile_id; }
    public String getProfile_shortcut() { return profile_shortcut; }
    public String getDescription() { return description; }
}
