package com.egradebook.backend.repository;

import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Teacher;
import com.egradebook.backend.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public User findUserByUsername(String username) {
        String sql = "SELECT user_id, username, password, role FROM users WHERE username = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{username}, (rs, rowNum) ->
                    new User(
                            rs.getLong("user_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("role")
                    )
            );
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    public User findUserByPesel(String pesel){
        String sql = "SELECT user_id, username, password, role FROM users WHERE pesel = ?";
        try{
            return jdbcTemplate.queryForObject(sql, new Object[]{pesel}, (rs, rowNum) ->
                    new User(
                            rs.getLong("user_id"),
                            rs.getString("username"),
                            rs.getString("password"),
                            rs.getString("role")
                    )

            );
        }catch(EmptyResultDataAccessException e){
            return null;
        }
    }

    public int countByNameAndSurname(String name, String surname){
        String sql = "SELECT COUNT(*) FROM users u JOIN personal_data p ON u.user_id = p.user_id" +
                " WHERE p.name = ? AND p.surname = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{name, surname}, Integer.class);
    }

    public User saveUser(User user) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, user.getUsername(), user.getPassword(), user.getRole());
        return user;
    }

    public int getUserId(String username) {
        String sql = "SELECT user_id FROM users WHERE username = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{username}, Integer.class);
    }

    public int getTeacherId(String username){
        String sql = "SELECT teacher_id FROM teachers t JOIN users u " +
                "ON u.user_id = t.user_id WHERE u.username = ? ";
        return jdbcTemplate.queryForObject(sql, new Object[]{username}, Integer.class);
    }

    public int getSubjectId(String subject){
        String sql = "SELECT subject_id FROM subjects WHERE subject = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{subject}, Integer.class);
    }

    public void saveTeacher(Teacher teacher) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, teacher.getUsername(), teacher.getPassword(), "teacher");

        int userId = getUserId(teacher.getUsername());

        sql = "INSERT INTO teachers (user_id) VALUES (?)";
        jdbcTemplate.update(sql, userId);

        int teacherId = getTeacherId(teacher.getUsername());
        //dodajemy przedmioty
        sql = "INSERT INTO teacher_subject (teacher_id, subject_id) VALUES (?, ?)";

        List<String> subjects = teacher.getSubjects();
        for(String subject: subjects){
            jdbcTemplate.update(sql, teacherId, getSubjectId(subject));
        }

    }

    public void saveStudent(Student student) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, student.getUsername(), student.getPassword(), "student");

        int userId = getUserId(student.getUsername());

        sql = "INSERT INTO students (user_id, class_id) VALUES (?, ?)";
        jdbcTemplate.update(sql, userId, student.getClassId());

        sql = "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, userId, student.getName(), student.getSurname(), student.getPesel());
    }
}
