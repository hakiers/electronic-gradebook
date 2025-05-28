package com.egradebook.backend.repository;

import com.egradebook.backend.model.Clazz;
import com.egradebook.backend.model.Lesson;
import com.egradebook.backend.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClassRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    private TeacherRepository teacherRepository;

    public List<Student> getStudentsInClass(int class_id){
        String sql = """
                SELECT s.student_id, p.name, p.surname, p.pesel FROM personal_data p
                JOIN students s ON p.user_id = s.user_id WHERE s.class_id = ?
                """;

        List<Student> students = jdbcTemplate.query(sql, new Object[]{class_id}, (rs, rowNum) ->
                new Student(
                        rs.getInt("student_id"),
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

    public List<Lesson> getScheulde(int class_id){
        String sql = " SELECT * FROM class_schedule WHERE class_id = ?";

        List<Lesson> scheulde = jdbcTemplate.query(sql, new Object[]{class_id}, (rs, rowNum) -> new Lesson(
                rs.getInt("schedule_id"),
                rs.getInt("class_id"),
                rs.getInt("teacher_id"),
                rs.getInt("subject_id"),
                rs.getInt("group"),
                rs.getInt("day_of_week"),
                rs.getInt("lesson_number"),
                rs.getInt("room_number")
                )
        );

        return scheulde;
    }

    public Clazz getClazz(int class_id){
        String sql = """
                SELECT cl.class_id, cl_p.name, cl_p.short_name, cl.class_year, cl.class_teacher FROM classes cl 
                INNER JOIN class_profile cl_p ON cl_p.id = cl.class_id WHERE cl.class_id = ?
                """;
        return jdbcTemplate.queryForObject(sql, new Object[]{class_id}, (rs, rowNum) -> new Clazz(
                rs.getInt("class_id"),
                rs.getString("name"),
                rs.getString("short_name"),
                rs.getString("class_year"),
                teacherRepository.getTeacher(rs.getInt("class_teacher"))
                )
        );
    }

    public List<Integer> getAllClassId(String class_year){
        String sql = "SELECT class_id FROM classes WHERE class_year >= ?";
        List<Integer> classes = jdbcTemplate.query(sql, new Object[]{class_year}, (rs, rowNum) -> rs.getInt("class_id"));
        return classes;
    }

    public boolean assignTeacher(int teacher_id, int class_id, int subject_id, int group_id){
        String sql = """
                INSERT INTO teacher_class_subject (teacher_id, class_id, subject_id, group_id)
                VALUES (?, ?, ?, ?)
                """;
        int assigned = jdbcTemplate.update(sql, new Object[]{teacher_id, class_id, subject_id, group_id});
        return assigned > 0;
    }
}
