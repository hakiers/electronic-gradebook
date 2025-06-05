package com.egradebook.backend.dto;

public class SubjectGroupsDto {
    private int group_id;
    private int class_id;
    private int subject_id;
    private int group_number;

    SubjectGroupsDto() {};

    public SubjectGroupsDto(int group_id, int class_id, int subject_id, int group_number) {
        this.group_id = group_id;
        this.class_id = class_id;
        this.subject_id = subject_id;
        this.group_number = group_number;
    }

    public int getGroup_id() {return group_id;}
    public int getClass_id() {return class_id;}
    public int getSubject_id() {return subject_id;}
    public int getGroup_number() {return group_number;}

    public void setGroup_id(int group_id) {this.group_id = group_id;}
    public void setClass_id(int class_id) {this.class_id = class_id;}
    public void setSubject_id(int subject_id) {this.subject_id = subject_id;}
    public void setGroup_number(int group_number) {this.group_number = group_number;}
}
