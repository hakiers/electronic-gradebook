package com.egradebook.backend.service;

import com.egradebook.backend.dto.LessonDto;
import com.egradebook.backend.dto.StudentAttendance;
import com.egradebook.backend.dto.StudentDto;
import com.egradebook.backend.dto.SubjectsWithGradesDto;
import com.egradebook.backend.exception.DatabaseUnavailableException;
import com.egradebook.backend.model.Grade;
import com.egradebook.backend.model.Lesson;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.ParentRepository;
import com.egradebook.backend.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ParentService {

    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Autowired
    ParentRepository parentRepository;
    @Autowired
    UserRepository userRepository;

    public List<StudentDto> GetAllChildren(HttpSession session) {
        User loggedUser = userRepository.findUserById(Integer.parseInt(session.getAttribute("user_id").toString()));
        return parentRepository.getAllChildren(loggedUser.getRoleId());
    }
    public List<SubjectsWithGradesDto> getGrades(HttpSession session, Student student) {
        return student.getAllGrades();
    }
    public List<LessonDto> getSchedule(HttpSession session, Student student) {
        List<LessonDto> schedule = student.getSchedule().stream()
                .map(lesson -> {
                    return new LessonDto(lesson);
                }).toList();
        return schedule;
    }
    public List<StudentAttendance> getAttendance(HttpSession session, Student student) {
        return student.getAllStudentsAbsences();
    }
}
