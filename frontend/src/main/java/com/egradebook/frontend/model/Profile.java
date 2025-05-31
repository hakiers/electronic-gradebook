package com.egradebook.frontend.model;

public class Profile {
    private int id;
    private String name;
    private String short_name;

    public Profile() {}

    public Profile(int id, String name, String short_name) {
        this.id = id;
        this.name = name;
        this.short_name = short_name;
    }

    public int getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public String getShort_name() {
        return short_name;
    }
}
