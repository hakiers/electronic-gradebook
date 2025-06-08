package com.egradebook.backend.service;


import com.egradebook.backend.dto.StudentDto;
import com.egradebook.backend.dto.SubjectGroupsDto;
import com.egradebook.backend.dto.TeacherDto;
import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.*;
import com.egradebook.backend.request.*;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.utils.Generator;
import com.egradebook.backend.utils.Pair;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class AdminService {
    @Autowired
    UserRepository userRepository;
    @Autowired
    private TeacherRepository teacherRepository;
    @Autowired
    private ClassRepository classRepository;
    @Autowired
    private SubjectRepository subjectRepository;
    @Autowired
    private StudentRepository studentRepository;
    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private Generator generator;

    public LoginData registerNewTeacher(TeacherRegistrationRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can register new teacher!");
        }
        LoginData loginData = generator.generateLoginData(request.getName(), request.getSurname());

        Teacher newteacher = new Teacher(request);
        newteacher.setUsername(loginData.getUsername());
        newteacher.setPassword(loginData.getPassword());
        newteacher.register();
        return loginData;
    }

    public LoginData registerNewStudent(StudentRegistrationRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can register new teacher!");
        }

        LoginData loginData = generator.generateLoginData(request.getName(), request.getSurname());
        Student newstudent = new Student(request);
        newstudent.setUsername(loginData.getUsername());
        newstudent.setPassword(loginData.getPassword());
        newstudent.register();
        return loginData;
    }

    public void assignTeacher(AssignTeacherRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can assign teacher to class!");
        }
        Clazz clazz = classRepository.getClazz(request.getClass_id());
        Teacher teacher = teacherRepository.getTeacher(request.getTeacher_id());
        Subject subject = subjectRepository.getSubject(request.getSubject_id());

        clazz.assignTeacher(teacher, subject, request.getGroup_id());
    }

    public List<Subject> getSubjects(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view subjects!");
        }
        return subjectRepository.getAllSubjects();

    }

    public List<TeacherDto> getTeachers(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view teachers!");
        }

        return teacherRepository.getAllTeachers().stream().map(TeacherDto::new).collect(Collectors.toList());
    }

    public List<StudentDto> getStudents(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view students!");
        }

        return studentRepository.getAllStudents().stream().map(StudentDto::new).collect(Collectors.toList());
    }

    public List<Pair<Subject, Group>> getSubjectGroups(int class_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view subject groups!");
        }

        return groupRepository.getAllSubjectGroups(class_id);
    }

    public void addNewClassProfile(AddClassProfileRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can add class profile!");
        }
        classRepository.addNewClassProfile(request);
    }

    public void deleteClassProfile(int profile_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can delete class profile!");
        }

        classRepository.deleteClassProfile(profile_id);
    }

    public void addNewClass(AddClassRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can add class!");
        }
        classRepository.addNewClass(request);
    }

    public void deleteClass(int class_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can delete class!");
        }
        classRepository.deleteClass(class_id);
    }

    public void addNewSubject(HttpSession session, String name) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can add subject!");
        }
        subjectRepository.addNewSubject(name);
    }

    public boolean editUserPersonalInfo(EditUserPersonalDataRequest request, int user_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can edit personal information!");
        }
        return userRepository.editPersonalInfo(request, user_id);
    }

    public void assignStudentToGroups(AssignStudentToGroupsRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can assign student to groups!");
        }

        studentRepository.assignStudentToGroups(request);
    }

    public TeacherDto getTeacher(int teacher_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view teacher!");
        }
        return new TeacherDto(teacherRepository.getTeacher(teacher_id));
    }

    public List<TeacherDto> getTeachersForSubject(int subject_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view teachers!");
        }
        return teacherRepository.getTeachersForSubject(subject_id).stream().map(TeacherDto::new).collect(Collectors.toList());
    }

    public List<SubjectGroupsDto> getStudentSubjectGroups(int student_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view student groups!");
        }
        return studentRepository.getStudentSubjectGroups(student_id);
    }

    public void changeStudentClass(ChangeClassRequest request, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can change student class!");
        }
        studentRepository.changeClass(request.getStudent_id(), request.getClass_id());
    }

    public int getUserIdByStudentId(int student_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view user id!");
        }
        return studentRepository.getUserId(student_id);
    }

    public int getUserIdByTeacherId(int teacher_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can view user id!");
        }
        return teacherRepository.getUserId(teacher_id);
    }

    public void deleteStudent(int student_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can delete student!");
        }
        int user_id = getUserIdByStudentId(student_id, session);
        userRepository.deleteUser(user_id);
    }

    public void deleteTeacher(int teacher_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can delete student!");
        }
        int user_id = getUserIdByTeacherId(teacher_id, session);
        userRepository.deleteUser(user_id);
    }

    public void deleteTeacherSubject(int teacher_id, int subject_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can delete student!");
        }
        Teacher teacher = teacherRepository.getTeacher(teacher_id);
        Subject subject = subjectRepository.getSubject(subject_id);
        teacher.deleteTeachSubject(subject);
    }

    public void addTeacherSubject(int teacher_id, int subject_id, HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        if(!loggedUser.isAdmin()) {
            throw new ForbiddenOperationException("Only admin can add student!");
        }
        Teacher teacher = teacherRepository.getTeacher(teacher_id);
        Subject subject = subjectRepository.getSubject(subject_id);
        teacher.addTeachSubject(subject);
    }
}
