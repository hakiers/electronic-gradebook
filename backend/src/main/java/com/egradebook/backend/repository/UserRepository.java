package com.egradebook.backend.repository;

import com.egradebook.backend.model.*;
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

    public UserContactData getUserContactData(int user_id){
        String sql = "SELECT phone_number, email, adress FROM contact_info WHERE user_id = ?";

        return (UserContactData) jdbcTemplate.query(sql, new Object[]{user_id}, (rs, rowNum) ->
                new UserContactData(
                        rs.getString("phone_number"),
                        rs.getString("email"),
                        rs.getString("adress")
                )
        );
    }

    public UserPersonalData getUserPersonalData(int user_id){
        String sql = "SELECT name, surname, pesel FROM personal_data WHERE user_id = ?";

        return (UserPersonalData) jdbcTemplate.query(sql, new Object[]{user_id}, (rs, rowNum) ->
                    new UserPersonalData(
                            rs.getString("name"),
                            rs.getString("surname"),
                            rs.getString("pesel")
                    )
                );
    }

}
