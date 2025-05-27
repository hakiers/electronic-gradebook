package com.egradebook.backend.model;

import ch.qos.logback.core.joran.sanity.Pair;
import com.egradebook.backend.dto.Attendance;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.PeselAlreadyExistsException;
import com.egradebook.backend.repository.TeacherRepository;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.request.*;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.ArrayList;
import java.util.List;

public class Teacher {
    private int teacher_id;
    private String name;
    private String surname;
    private String pesel;
    private List<Subject> subjects = new ArrayList<>();
    private String username;
    private String password;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    private final UserRepository userRepository = new UserRepository();
    private final TeacherRepository teacherRepository = new TeacherRepository();

    public Teacher() {};

    public Teacher(int teacher_id, String name, String surname, String pesel, List<Subject> subjects, String username, String password) {
        this.teacher_id = teacher_id;
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.subjects = subjects;
        this.username = username;
        this.password = password;
    }

    public Teacher(TeacherRegistrationRequest teacher){
        this.name = teacher.getName();
        this.surname = teacher.getSurname();
        this.pesel = teacher.getPesel();
        //sub list to do
    }

    public int getTeacher_id() {
        return teacher_id;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
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
        if(userRepository.findUserByPeselAndRole(pesel, "teacher") == null){
            throw new PeselAlreadyExistsException("Pesel is already taken!");
        }
        teacherRepository.saveTeacher(this);
    }

    public List<Subject> getSubjects() {
        return subjects;
    }

    public List<Clazz> getClassesForSubject(int subject_id){
        if(doesTeacherTeachSubject(subject_id)){
            return teacherRepository.getTeacherClassesForSubject(teacher_id, subject_id);
        }
        return null;
    }

    public boolean doesTeacherTeachSubject(int subject_id) {
        for (Subject subject : subjects) {
            if(subject.getSubject_id() == subject_id) {
                return true;
            }
        }
        return false;
    }

    public void addGrade(AddGradeRequest grade){
        boolean authorized = teacherRepository.canTeacherGradeStudent(teacher_id, grade.getStudent_id(), grade.getSubject_id());
        if (!authorized) {
            throw new ForbiddenOperationException("Teacher is not authorized to grade student");
        }

        Grade newGrade = new Grade(grade);
        newGrade.setTeacher_id(teacher_id);
        teacherRepository.insertGrade(newGrade);
    }

    public void editGrade(EditGradeRequest grade){
        boolean updated = teacherRepository.updateGrade(grade, teacher_id);
        if(!updated){
            throw new ForbiddenOperationException("You can't edit this grade or it doesn't exist");
        }
    }

    public void removeGrade(RemoveGradeRequest grade){
        boolean deleted =  teacherRepository.deleteGrade(grade, teacher_id);
        if (!deleted) {
            throw new ForbiddenOperationException("You can't delete this grade or it doesn't exist");
        }
    }

    public void addAttendance(AddAttendanceRequest attendance){
        //to do sprawdzenie czy nauczyciel moze dac obecnosc danemu uczniowi
        teacherRepository.addAttendance(attendance);
    }

    public void editAttendance(EditAttendanceRequest attendance){
        boolean updated = teacherRepository.editAttendance(attendance);
        //to do sprawdzenie czy nauczyciel moze danemu uczniowi usprawiedliwic obecnosc
        //edytowac na inny status moze kazdy nauczyciel ktory uczy w danej klasie
        //lub jest na zastepstwie - potencjalny problem
        if(!updated){
            throw new ForbiddenOperationException("You can't edit this attendance or it doesn't exist");
        }
    }
    //wyswietlanie frekwencji z biezacej lekcji
    /*public List<Pair<Student,Attendance>> getAttendanceByClassAndLesson(GetAttendanceByClassAndLessonRequest attendance){
        return teacherRepository.getAttendanceByClassAndLesson(attendance);
    }*/

}
