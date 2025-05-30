package com.egradebook.backend.request;

public class EditUserContactDataRequest {
    private String phone_number;
    private String email;
    private String address;

    public EditUserContactDataRequest(String phone_number, String email, String address) {
        this.phone_number = phone_number;
        this.email = email;
        this.address = address;
    }

    public String getPhone_number() { return phone_number; }
    public String getEmail() { return email; }
    public String getAddress() { return address; }
}
