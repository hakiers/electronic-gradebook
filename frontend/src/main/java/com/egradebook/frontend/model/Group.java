package com.egradebook.frontend.model;

public class Group {
    private int group_id;
    private int group_number;

    public Group(int group_id, int group_number) {
        this.group_id = group_id;
        this.group_number = group_number;
    }

    public int getGroup_id() {
        return group_id;
    }

    public int getGroup_number() {
        return group_number;
    }
}
