package com.egradebook.backend.model;


import com.egradebook.backend.dto.UserContactData;
import com.egradebook.backend.dto.UserPersonalData;
import com.egradebook.backend.repository.ParentRepository;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class User {
    private int id;
    private String username;
    private String password;
    private String role;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    private final UserRepository userRepository = new UserRepository();
    private final TeacherRepository teacherRepository = new TeacherRepository();
    private final StudentRepository studentRepository = new StudentRepository();
    private final ParentRepository parentRepository = new ParentRepository();

    public User() {}

    public User(int id, String username, String password, String role) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return passwordEncoder.encode(password);
    }

    public void changePassword(String newPassword) {
        password = newPassword;
        userRepository.changePassword(username, getPassword());
    }

    public boolean isPasswordCorrect(String password) {
        return passwordEncoder.matches(password, this.password) && password != null;
    }

    public String getRole() {
        return role;
    }

    public boolean isAdmin() {
        return role.equals("admin");
    }

    public boolean isTeacher() {
        return role.equals("teacher");
    }

    public boolean isParent(){
        return role.equals("parent");
    }

    public boolean isStudent() {
        return role.equals("student");
    }

    public boolean isLoggedIn(){
        return role != null;
    }

    public int getRoleId() {
        if(role.equals("teacher")){
            return teacherRepository.getTeacherId(id);
        }
        else if(role.equals("student")){
            return studentRepository.getStudentId(id);
        }
        else if(role.equals("parent")){
            return parentRepository.getParentId(id);
        }
        else if(role.equals("admin")){
            return id;
        }
        return 0;
    }

    public UserContactData contactInfo(){
        //to do
        return new UserContactData();
    }

    public UserPersonalData personalInfo() {
        // to do
        return new UserPersonalData();
    }
}
