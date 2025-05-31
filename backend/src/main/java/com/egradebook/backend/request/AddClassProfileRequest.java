package com.egradebook.backend.request;

public class AddClassProfileRequest {
    String short_name;
    String name;

    public AddClassProfileRequest(String short_name, String name) {
        this.short_name = short_name;
        this.name = name;
    }

    public String getShortName() { return short_name; }
    public String getName() { return name; }

}


