package com.egradebook.backend.model;

import com.egradebook.backend.exception.PeselAlreadyExistsException;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.repository.utils.FindRepository;
import com.egradebook.backend.request.StudentRegistrationRequest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Student {
    private int student_id;
    private String name;
    private String surname;
    private String pesel;
    private int class_id;
    private String username;
    private String password;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    private final StudentRepository studentRepository = new StudentRepository();
    private final UserRepository userRepository = new UserRepository();
    private final FindRepository findRepository = new FindRepository();

    public Student() {};

    public Student(int student_id, String name, String surname, String pesel, int class_id, String username, String password) {
        if (pesel == null || pesel.length() != 11) {
            throw new IllegalArgumentException("Pesel must have 11 digits");
        }
        this.student_id = student_id;
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.class_id = class_id;
        this.username = username;
        this.password = password;
    }

    public Student(StudentRegistrationRequest student) {
        this.name = student.getName();
        this.surname = student.getSurname();
        this.pesel = student.getPesel();
        this.class_id = student.getClassId();
    }

    public int getStudent_id() {
        return student_id;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public int getClass_id() {
        return class_id;
    }

    public String getPesel() {
        return pesel;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return passwordEncoder.encode(password);
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void register(){
        if(findRepository.findUserByPeselAndRole(pesel, "student") == null){
            throw new PeselAlreadyExistsException("Pesel is already taken!");
        }
        userRepository.saveStudent(this);
    }

    public List<Subject> getSubjects() {
        return studentRepository.getStudentsSubjects(student_id);
    }

    public List<Grade> getGrades(int subject_id) {
        return studentRepository.getStudentsGrades(subject_id, student_id);
    }

    public Map<String, List<Grade>> getAllGrades(){
        List<Subject> subjects = getSubjects();
        Map<String, List<Grade>> gradesList = new HashMap<>();
        for (Subject subject : subjects) {
            gradesList.put(subject.getName(), getGrades(subject.getSubject_id()));
        }
        return gradesList;
    }


}
