package com.egradebook.backend.repository;

import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Teacher;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.utils.GetRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    GetRepository getRepository;

    public User saveUser(User user) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getRole());
        return user;
    }

    public void saveTeacher(Teacher teacher) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, teacher.getUsername(), teacher.getPassword(), "teacher");

        int userId = getRepository.getUserId(teacher.getUsername());

        sql = "INSERT INTO teachers (user_id) VALUES (?)";
        jdbcTemplate.update(sql, userId);

        int teacherId = getRepository.getTeacherId(teacher.getUsername());
        sql = "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, userId, teacher.getName(), teacher.getSurname(), teacher.getPesel());


        sql = "INSERT INTO teacher_subject (teacher_id, subject_id) VALUES (?, ?)";
        List<String> subjects = teacher.getSubjects();
        for(String subject: subjects){
            jdbcTemplate.update(sql, teacherId, getRepository.getSubjectId(subject));
        }

    }

    public void saveStudent(Student student) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, student.getUsername(), student.getPassword(), "student");

        int userId = getRepository.getUserId(student.getUsername());

        sql = "INSERT INTO students (user_id, class_id) VALUES (?, ?)";
        jdbcTemplate.update(sql, userId, student.getClassId());

        sql = "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, userId, student.getName(), student.getSurname(), student.getPesel());
    }

    public void changePassword(String username, String newPassword){
        String sql = "UPDATE users SET password = ? WHERE username = ?";
        jdbcTemplate.update(sql, newPassword, username);
    }

}
