package com.egradebook.backend.model;

public class ClassProfile {
    private int id;
    private String name;
    private String short_name;

    public ClassProfile(){

    }
    public ClassProfile(int id, String name, String short_name) {
        this.id = id;
        this.name = name;
        this.short_name = short_name;
    }

    public int getId() { return id; }
    public String getName() { return name; }
    public String getShort_name() { return short_name; }
}
