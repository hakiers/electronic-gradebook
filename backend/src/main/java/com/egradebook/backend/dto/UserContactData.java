package com.egradebook.backend.dto;

public class UserContactData {
    private String phone_number;
    private String email;
    private String address;

    public UserContactData() {};

    public UserContactData(String phone_number, String email, String address) {
        this.phone_number = phone_number;
        this.email = email;
        this.address = address;
    }
    public String getPhone_number() { return phone_number; }
    public String getEmail() { return email; }
    public String getAddress() { return address; }

    public void setPhone_number(String phone_number) { this.phone_number = phone_number; }
    public void setEmail(String email) { this.email = email; }
    public void setAddress(String address) { this.address = address; }
}
