package com.egradebook.frontend.dto;

public class AddClassProfileRequest {
    private String name;
    private String short_name;

    public AddClassProfileRequest(String name, String short_name) {
        this.name = name;
        this.short_name = short_name;
    }

    public String getName() {
        return name;
    }

    public String getShort_name() {
        return short_name;
    }
}
