package com.egradebook.backend.model;


import com.egradebook.backend.dto.UserContactData;
import com.egradebook.backend.dto.UserPersonalData;
import com.egradebook.backend.repository.ParentRepository;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.utils.BeanUtil;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class User {
    private int user_id;
    private String username;
    private String password;
    private String role;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    private final UserRepository userRepository =  BeanUtil.getBean(UserRepository.class);
    private final TeacherRepository teacherRepository =  BeanUtil.getBean(TeacherRepository.class);
    private final StudentRepository studentRepository = BeanUtil.getBean(StudentRepository.class);
    private final ParentRepository parentRepository = BeanUtil.getBean(ParentRepository.class);

    public User() {}

    public User(int user_id, String username, String password, String role) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public int getUser_id() {
        return user_id;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return passwordEncoder.encode(password);
    }

    public void changePassword(String newPassword) {
        this.password = newPassword;
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
            return teacherRepository.getTeacherId(user_id);
        }
        else if(role.equals("student")){
            return studentRepository.getStudentId(user_id);
        }
        else if(role.equals("parent")){
            return parentRepository.getParentId(user_id);
        }
        else if(role.equals("admin")){
            return user_id;
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
