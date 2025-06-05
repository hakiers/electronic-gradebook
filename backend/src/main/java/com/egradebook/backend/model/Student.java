package com.egradebook.backend.model;

import com.egradebook.backend.dto.Attendance;
import com.egradebook.backend.dto.StudentAttendance;
import com.egradebook.backend.dto.StudentProfile;
import com.egradebook.backend.dto.SubjectsWithGradesDto;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.PeselAlreadyExistsException;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.repository.StudentRepository;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.request.StudentRegistrationRequest;
import com.egradebook.backend.utils.BeanUtil;
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
    private final StudentRepository studentRepository = BeanUtil.getBean(StudentRepository.class);
    private final ClassRepository clazzRepository = BeanUtil.getBean(ClassRepository.class);
    private final UserRepository userRepository =  BeanUtil.getBean(UserRepository.class);

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

    public String getFullName(){
        return name + " " + surname;
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
        if(userRepository.existUserByPeselAndRole(pesel, "student")){
            throw new PeselAlreadyExistsException("Pesel is already taken!");
        }
        if(!studentRepository.saveStudent(this)){
            throw new ForbiddenOperationException("Cannot register student!");
        }
    }

    public List<Subject> getSubjects() {
        return studentRepository.getStudentsSubjects(student_id);
    }

    public List<Grade> getGrades(Subject subject) {
        return studentRepository.getStudentsGrades(subject.getSubject_id(), student_id);
    }

    public List<SubjectsWithGradesDto> getAllGrades(){
        List<Subject> subjects = getSubjects();
        List<SubjectsWithGradesDto> gradesList = new ArrayList<>();
        for (Subject subject : subjects) {
            gradesList.add(new SubjectsWithGradesDto(subject, getGrades(subject)));
        }

        return gradesList;
    }

    public StudentProfile profile() {
        //to do
        return new StudentProfile();
    }

    //pobranie statusu obecnosci z danego dnia
    //pobranie wszystkich nieobecnosci???
    //
    public List<Attendance> getAttendanceByDate(String date) {
        return studentRepository.getStudentsAttendanceByDate(student_id, date);
    }

    public List<StudentAttendance> getAllStudentsAbsences(){
        return studentRepository.getAllStudentsAbsences(student_id);
    }

    public List<Lesson> getSchedule(){
        return clazzRepository.getSchedule(student_id);
    }
}
