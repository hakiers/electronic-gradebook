package com.egradebook.backend.model;

import com.egradebook.backend.dto.Attendance;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.PeselAlreadyExistsException;
import com.egradebook.backend.repository.*;
import com.egradebook.backend.request.*;
import com.egradebook.backend.utils.BeanUtil;
import com.egradebook.backend.utils.Pair;
import com.egradebook.backend.utils.Triple;
import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;



public class Teacher {
    private int teacher_id;
    private String name;
    private String surname;
    private String pesel;
    private List<Subject> teachSubjects = new ArrayList<>();
    private List<Triple<Clazz, Subject, Group>> teachClassSubject = new ArrayList<>();
    private String username;
    private String password;

    private final BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
    private final UserRepository userRepository = BeanUtil.getBean(UserRepository.class);
    private final TeacherRepository teacherRepository =  BeanUtil.getBean(TeacherRepository.class);
    private final GroupRepository groupRepository = BeanUtil.getBean(GroupRepository.class);
    private final SubjectRepository subjectRepository = BeanUtil.getBean(SubjectRepository.class);
    private final ClassRepository classRepository = BeanUtil.getBean(ClassRepository.class);

    public Teacher() {};

    public Teacher(int teacher_id, String name, String surname, String pesel, String username, String password) {
        this.teacher_id = teacher_id;
        this.name = name;
        this.surname = surname;
        this.pesel = pesel;
        this.username = username;
        this.password = password;
    }

    public Teacher(TeacherRegistrationRequest teacher){
        this.name = teacher.getName();
        this.surname = teacher.getSurname();
        this.pesel = teacher.getPesel();
        this.teachSubjects = teacher.getSubjects();
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

    public String getFullName(){
        return name + " " + surname;
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
        if(userRepository.existUserByPeselAndRole(pesel, "teacher")){
            throw new PeselAlreadyExistsException("Pesel is already taken!");
        }
        if(!teacherRepository.saveTeacher(this)){
            throw new ForbiddenOperationException("Cannot register teacher!");
        }
    }

    public void loadTeacherSubjects(){
        if(teacher_id == 0) return;
        this.teachSubjects = teacherRepository.getTeacherSubjects(this.teacher_id);
    }

    public void loadTeacherClassesSubjects(){
        if(teacher_id == 0) return;
        this.teachClassSubject = teacherRepository.getTeacherClassesSubject(this.teacher_id);
    }

    public List<Subject> getInitSubjects() {
        return teachSubjects;
    }

    public List<Subject> getTeachSubjects() {
        loadTeacherSubjects();
        return teachSubjects;
    }

    public List<Triple<Clazz, Subject, Group>> getTeachClassSubject() {
        loadTeacherClassesSubjects();
        return teachClassSubject;
    }

    public List<Clazz> getClassesForSubject(Subject subject){
        if(doesTeacherTeachSubject(subject)){
            return teacherRepository.getTeacherClassesForSubject(teacher_id, subject.getSubject_id());
        }
        return null;
    }

    public boolean doesTeacherTeachSubject(Subject subject) {
        loadTeacherSubjects();
        return teachSubjects.contains(subject);
    }

    public void addGrade(AddGradeRequest grade){
        boolean authorized = teacherRepository.canTeacherGradeStudent(teacher_id, grade.getStudent_id(), grade.getSubject_id());
        /*if (!authorized) {
            throw new ForbiddenOperationException("Teacher is not authorized to grade student");
        }*/

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
    public List<Pair<Student, Attendance>> getAttendanceByClassAndLesson(GetAttendanceByLessonRequest attendance){
        return teacherRepository.getAttendanceByLesson(attendance);
    }


    //pobieranie planu zajec dla nauczyciela
    public List<Lesson> getSchedule(){
        return teacherRepository.getSchedule(teacher_id);
    }

    public List<Integer> getClassSubjectSchedule(int class_id,int subject_id,int dayOfWeek) {
        return teacherRepository.getClassSubjectSchedule(teacher_id,class_id,subject_id,dayOfWeek);
    }

    public void addTeachSubject(Subject subject){
        teacherRepository.addTeachSubject(teacher_id, subject.getSubject_id());
    }

    public void deleteTeachSubject(Subject subject){
        teacherRepository.deleteTeachSubject(teacher_id, subject.getSubject_id());
    }
}