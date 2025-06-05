package com.egradebook.backend.service;

import com.egradebook.backend.dto.StudentDto;
import com.egradebook.backend.exception.DatabaseUnavailableException;
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
}
