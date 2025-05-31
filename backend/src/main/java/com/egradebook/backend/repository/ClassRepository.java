package com.egradebook.backend.repository;

import com.egradebook.backend.model.*;
import com.egradebook.backend.request.AddClassProfileRequest;
import com.egradebook.backend.request.AddClassRequest;
import com.egradebook.backend.request.AddSubjectGroupRequest;
import com.egradebook.backend.utils.BeanUtil;
import com.egradebook.backend.utils.Pair;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClassRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Lazy
    @Autowired
    TeacherRepository teacherRepository;
    @Autowired
    SubjectRepository subjectRepository;

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

    public List<Lesson> getSchedule(int class_id){
        String sql = " SELECT * FROM class_schedule WHERE class_id = ?";

        List<Lesson> scheulde = jdbcTemplate.query(sql, new Object[]{class_id}, (rs, rowNum) -> new Lesson(
                rs.getInt("schedule_id"),
                rs.getInt("class_id"),
                rs.getInt("teacher_id"),
                rs.getInt("subject_id"),
                rs.getInt("group_id"),
                rs.getInt("day_of_week"),
                rs.getInt("lesson_number"),
                rs.getInt("room_number")
                )
        );

        return scheulde;
    }

    public Clazz getClazz(int class_id){
        String sql = """
                SELECT cl.class_id, cl_p.name, cl_p.short_name, cl.class_year FROM classes cl 
                INNER JOIN class_profile cl_p ON cl_p.id = cl.class_profile WHERE cl.class_id = ?
                """;
        return jdbcTemplate.queryForObject(sql, new Object[]{class_id}, (rs, rowNum) -> new Clazz(
                rs.getInt("class_id"),
                rs.getString("name"),
                rs.getString("short_name"),
                rs.getString("class_year")
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

    public void addNewClassProfile(AddClassProfileRequest request){
        String sql = """
                INSERT INTO class_profile (short_name, name)
                VALUES (?, ?)
                """;
        jdbcTemplate.update(sql, new Object[]{request.getShortName(), request.getName()});
    }

    public void deleteClassProfile(int id){
        String sql = """
                DELETE FROM class_profile WHERE id = ?
                """;
        jdbcTemplate.update(sql, new Object[]{id});
    }

    public void addNewClass(AddClassRequest request){
        String sql = """
                INSERT INTO classes (class_profile, class_teacher, class_year)
                VALUES (?, ?, ?)
                """;
        jdbcTemplate.update(sql, new Object[]{request.getClass_profile(), request.getClass_teacher(), request.getClass_year()});
    }

    public void deleteClass(int class_id){
        String sql = """
                DELETE FROM classes WHERE class_id = ?
                """;
        jdbcTemplate.update(sql, new Object[]{class_id});
    }

    public void addLesson(Lesson lesson) {
        String sql = """
                INSERT INTO class_schedule (class_id, teacher_id, subject_id, group_id, day_of_week, lesson_number, room_number)
                VALUES (?,?,?,?,?,?,?)
                """;
       jdbcTemplate.update(sql, lesson.getClass_id(), lesson.getTeacher_id(),
               lesson.getSubject_id(), lesson.getGroup_id(), lesson.getDay_od_week(),
               lesson.getLesson_number(), lesson.getRoom_number());
    }

    public void removeLesson(int schedule_id) {
        String sql = """
                DELETE FROM class_schedule WHERE schedule_id = ?
                """;
        jdbcTemplate.update(sql, new Object[]{schedule_id});
    }

    public void addSubjectGroup(AddSubjectGroupRequest request){
        String sql = """
                INSERT INTO subject_groups (class_id, subject_id, group_number)
                VALUES (?, ?, ?)
                """;
        jdbcTemplate.update(sql, new Object[]{request.getClass_id(), request.getSubject_id(), request.getGroup_number()});
    }

    public List<ClassProfile> getAllClassProfiles(){
        String sql = """
                    SELECT * FROM class_profile
                """;
        return jdbcTemplate.query(sql, new Object[]{}, (rs, rowNum) ->
                new ClassProfile(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("short_name")
                )
        );
    }


}
