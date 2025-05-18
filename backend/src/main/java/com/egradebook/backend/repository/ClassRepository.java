package com.egradebook.backend.repository;

import com.egradebook.backend.model.Lesson;
import com.egradebook.backend.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ClassRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public List<Student> getStudentsInClass(int class_id){

        String sql = """
                SELECT s.student_id, p.name, p.surname, p.pesel FROM personal_data p
                JOIN students s ON p.user_id = s.user_id WHERE s.class_id = ?
                """;

        List<Student> students = jdbcTemplate.query(sql, new Object[]{class_id}, (rs, rowNum) ->
                new Student(
                        rs.getLong("student_id"),
                        rs.getString("name"),
                        rs.getString("surname"),
                        rs.getString("pesel"),
                        class_id,
                        null,
                        null
                    )
                );
        return students;
    }

    public Map<String, List<Lesson>> getScheulde(int class_id){
        String sql = " SELECT * FROM class_schedule WHERE class_id = ?";

        Map<String, List<Lesson>> scheulde = new LinkedHashMap<>();
        String[] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        for(String day: days){
            scheulde.put(day, new ArrayList<>());
        }
        jdbcTemplate.query(sql, new Object[]{class_id}, rs -> {
           int dayOfWeek = rs.getInt("day_of_week");

           scheulde.get(dayOfWeek).add(new Lesson(
                   rs.getInt("schedule_id"),
                   rs.getInt("class_id"),
                   rs.getInt("teacher_id"),
                   rs.getInt("subject_id"),
                   rs.getInt("group"),
                   rs.getInt("day_of_week"),
                   rs.getInt("lesson_number"),
                   rs.getInt("room_number"))
           );
        });

        return scheulde;
    }
}
