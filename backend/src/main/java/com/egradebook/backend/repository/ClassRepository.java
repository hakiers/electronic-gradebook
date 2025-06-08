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
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

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

    public int existSubjectGroup(int class_id, int subject_id, int group_number){
        String sql = "SELECT group_id FROM subject_groups WHERE class_id = ? AND subject_id = ? AND group_number = ?";
        try {
            Integer group_id = jdbcTemplate.queryForObject(sql, Integer.class, class_id, subject_id, group_number);
            return (group_id != null) ? group_id : 0;
        } catch (EmptyResultDataAccessException e) {
            return 0;
        }
    }

    public void addSubjectGroup(int class_id, int subject_id, int group_number){
        String sql = "INSERT INTO subject_groups (class_id, subject_id, group_number) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, class_id, subject_id, group_number);
    }

    public void addLesson(Lesson lesson) {
        int group_id = existSubjectGroup(lesson.getClass_id(), lesson.getSubject_id(), lesson.getGroup_id());
        if(group_id == 0){
            addSubjectGroup(lesson.getClass_id(), lesson.getSubject_id(), lesson.getGroup_id());
            group_id = existSubjectGroup(lesson.getClass_id(), lesson.getSubject_id(), lesson.getGroup_id());
        }

        String sql = """
                INSERT INTO class_schedule (class_id, teacher_id, subject_id, group_id, day_of_week, lesson_number, room_number)
                VALUES (?,?,?,?,?,?,?)
                """;
       jdbcTemplate.update(sql, lesson.getClass_id(), lesson.getTeacher_id(),
               lesson.getSubject_id(), group_id, lesson.getDay_od_week(),
               lesson.getLesson_number(), lesson.getRoom_number());

        String checkRelation = """
        SELECT COUNT(*) FROM teacher_class_subject
        WHERE teacher_id = ? AND class_id = ? AND subject_id = ? AND group_id = ?
        """;

        Integer exists = jdbcTemplate.queryForObject(checkRelation, Integer.class,
                lesson.getTeacher_id(), lesson.getClass_id(), lesson.getSubject_id(), group_id);

        if (exists != null && exists == 0) {
            String insertRelation = """
            INSERT INTO teacher_class_subject (teacher_id, class_id, subject_id, group_id)
            VALUES (?, ?, ?, ?)
            """;
            jdbcTemplate.update(insertRelation,
                    lesson.getTeacher_id(), lesson.getClass_id(), lesson.getSubject_id(), group_id);
        }
    }

    public void removeLesson(int schedule_id) {
        String getLessonInfo = """
        SELECT teacher_id, class_id, subject_id, group_id
        FROM class_schedule
        WHERE schedule_id = ?
        """;

        Map<String, Object> lesson = jdbcTemplate.queryForMap(getLessonInfo, schedule_id);

        int teacher_id = (int) lesson.get("teacher_id");
        int class_id = (int) lesson.get("class_id");
        int subject_id = (int) lesson.get("subject_id");
        int group_id = (int) lesson.get("group_id");

        // Usuwamy lekcję
        String deleteSchedule = "DELETE FROM class_schedule WHERE schedule_id = ?";
        jdbcTemplate.update(deleteSchedule, schedule_id);

        // Sprawdzamy, czy nauczyciel nadal ma inne lekcje tej samej kombinacji
        String checkRemaining = """
        SELECT COUNT(*) FROM class_schedule
        WHERE teacher_id = ? AND class_id = ? AND subject_id = ? AND group_id = ?
        """;

        Integer remaining = jdbcTemplate.queryForObject(checkRemaining, Integer.class,
                teacher_id, class_id, subject_id, group_id);

        if (remaining != null && remaining == 0) {
            // Jeśli nie ma innych lekcji, usuwamy z teacher_class_subject
            String deleteRelation = """
            DELETE FROM teacher_class_subject
            WHERE teacher_id = ? AND class_id = ? AND subject_id = ? AND group_id = ?
            """;
            jdbcTemplate.update(deleteRelation, teacher_id, class_id, subject_id, group_id);
        }
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
