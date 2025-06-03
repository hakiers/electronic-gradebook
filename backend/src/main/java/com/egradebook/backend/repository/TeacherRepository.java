package com.egradebook.backend.repository;

import com.egradebook.backend.dto.Attendance;
import com.egradebook.backend.dto.StudentDto;
import com.egradebook.backend.model.*;
import com.egradebook.backend.request.*;
import com.egradebook.backend.utils.Pair;
import com.egradebook.backend.utils.Triple;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Repository
public class TeacherRepository {
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ClassRepository classRepository;
    @Autowired
    private SubjectRepository subjectRepository;
    @Autowired
    private GroupRepository groupRepository;
    @Autowired
    private StudentRepository studentRepository;

    public List<Integer> getTeacherSubjectsWithId(int teacher_id){
        String sql = "SELECT subject_id FROM teacher_subject WHERE teacher_id = ?";
        return jdbcTemplate.queryForList(sql, Integer.class, teacher_id);
    }

    public int getTeacherId(int user_id) {
        String sql = "SELECT teacher_id FROM teachers WHERE user_id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{user_id}, Integer.class);
    }

    public Teacher getTeacher(int teacher_id){
        String sql = "SELECT t.teacher_id, p.name, p.surname, p.pesel FROM teachers t INNER JOIN personal_data p ON p.user_id = t.user_id WHERE teacher_id = ?";

        return jdbcTemplate.queryForObject(sql, new Object[]{teacher_id}, (rs, rowNum) ->
                new Teacher(
                        rs.getInt("teacher_id"),
                        rs.getString("name"),
                        rs.getString("surname"),
                        rs.getString("pesel"),
                        null,
                        null
                        )
        );
    }

    public boolean canTeacherGradeStudent(int teacher_id, int student_id, int subject_id) {
        String sql = """
            SELECT COUNT(*) FROM teacher_class_subject tcs
            JOIN students s ON tcs.class_id = s.class_id
            WHERE tcs.teacher_id = ? AND tcs.subject_id = ? AND s.student_id = ?
        """;

        //to do musimy brać pod uwagę grupę studenta

        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, teacher_id, subject_id, student_id);
        return count != null && count > 0;
    }

    public boolean doesTeacherTeachClass(int teacher_id, int class_id){
        String sql = """
                  SELECT COUNT(*) FROM teacher_class_subject tcs WHERE tcs.teacher_id = ?
                  AND tcs.class_id = ?
                """;
        Integer count = jdbcTemplate.queryForObject(sql, Integer.class, teacher_id, class_id);
        return count != null && count > 0;
    }

    public int getGradeTeacherId(int grade_id) {
        String sql = "SELECT teacher_id FROM grades WHERE grade_id = ?";
        try {
            return jdbcTemplate.queryForObject(sql, Integer.class, grade_id);
        } catch (EmptyResultDataAccessException e) {
            return -1;
        }
    }

    public void insertGrade(Grade grade) {
        String sql = """
            INSERT INTO grades (student_id, subject_id, teacher_id, grade_value, date, description)
            VALUES (?, ?, ?, ?, CURRENT_DATE, ?)
        """;
        jdbcTemplate.update(sql, grade.getStudent_id(), grade.getSubject_id(), grade.getTeacher_id(), grade.getGrade_value(), grade.getDescription());
    }

    public boolean updateGrade(EditGradeRequest request, int teacher_id){
        String sql = """
        UPDATE grades
        SET grade_value = ?, description = ?, date = CURRENT_DATE
        WHERE grade_id = ? AND teacher_id = ?
        """;

        int updated = jdbcTemplate.update(sql,
                request.getGrade_value(),
                request.getDescription(),
                request.getGrade_id(),
                teacher_id
        );

        return updated > 0;
    }

    public boolean deleteGrade(RemoveGradeRequest request, int teacher_id){
        String sql = """
        DELETE FROM grades
        WHERE grade_id = ? AND teacher_id = ?
        """;

        int deleted = jdbcTemplate.update(sql, request.getGrade_id(), teacher_id);

        return deleted > 0;
    }

    public List<Subject> getTeacherSubjects(int teacher_id) {
        String sql = """
                SELECT DISTINCT subjects.subject_id, subjects.name 
                FROM teacher_subject JOIN subjects ON teacher_subject.subject_id = subjects.subject_id
                WHERE teacher_subject.teacher_id = ?;
                """;
        List<Subject> subjects = jdbcTemplate.query(sql, new Object[]{teacher_id}, (rs, rowNum) ->
                new Subject(
                        rs.getInt("subject_id"),
                        rs.getString("name")
                )
        );
        return subjects;
    }

    public Teacher getClassTeacher(int class_id) {
        String sql = "SELECT class_teacher FROM classes WHERE class_id = ?";
        int teacher_id = jdbcTemplate.queryForObject(sql, Integer.class, class_id);

        return getTeacher(teacher_id);
    }

    public List<Clazz> getTeacherClassesForSubject(int teacher_id, int subject_id){
        String sql = """
        SELECT class_id, class_profile, class_teacher, class_year, short_name, name FROM classes 
        JOIN class_profile ON classes.class_profile = class_profile.profile_id 
        JOIN teacher_class_subject ON classes.class_id = teacher_class_subject.class_id 
        WHERE teacher_id = ? AND subject_id = ?
        """;

        List <Clazz> clazzes = jdbcTemplate.query(sql, new Object[]{teacher_id, subject_id}, (rs, rowNum) ->
                new Clazz(
                        rs.getInt("class_id"),
                        rs.getString("name"),
                        rs.getString("short_name"),
                        rs.getString("class_year")
                )
        );
        return clazzes;
    }

    public boolean saveTeacher(Teacher teacher) {
        String sql = "INSERT INTO users (username, password, role) VALUES (?, ?, ?)";
        try {
            jdbcTemplate.update(sql, teacher.getUsername(), teacher.getPassword(), "teacher");
        } catch (Exception e) {
            return false;
        }

        int user_id = userRepository.getUserId(teacher.getUsername());

        sql = "INSERT INTO teachers (user_id) VALUES (?)";
        jdbcTemplate.update(sql, user_id);

        int teacher_id = getTeacherId(user_id);
        sql = "INSERT INTO personal_data (user_id, name, surname, pesel) VALUES (?, ?, ?, ?)";

        try {
            jdbcTemplate.update(sql, user_id, teacher.getName(), teacher.getSurname(), teacher.getPesel());
        } catch (Exception e) {
            sql = "DELETE FROM users WHERE user_id = ?";
            jdbcTemplate.update(sql, user_id);
            return false;
        }

        sql = "INSERT INTO teacher_subject (teacher_id, subject_id) VALUES (?, ?)";
        for(Subject subject: teacher.getInitSubjects()){
            jdbcTemplate.update(sql, teacher_id, subject.getSubject_id());
        }
        return true;
    }

    public void addAttendance(AddAttendanceRequest attendance){
        String sql = "INSERT INTO attendance (student_id, schedule_id, status) VALUES (?, ?, ?)";

        jdbcTemplate.update(sql, attendance.getStudent_id(), attendance.getSchedule_id(), attendance.getStatus());


    }

    public boolean editAttendance(EditAttendanceRequest attendance){
        String sql = """
                UPDATE attendance
                SET status = ? 
                WHERE attendance_id = ?
                """;
        int updated = jdbcTemplate.update(sql, attendance.getStatus(), attendance.getAttendance_id());
        return updated > 0;
    }

    public List<Triple<Clazz, Subject, Group>> getTeacherClassesSubject(int teacher_id){
        String sql = " SELECT class_id, subject_id, group_id FROM teacher_class_subject WHERE teacher_id = ?";

        List<Triple<Clazz, Subject, Group>> classSubject= (List<Triple<Clazz, Subject, Group>>) jdbcTemplate.query(sql, new Object[]{teacher_id}, (rs, rowNum) ->
                new Triple<>(
                        classRepository.getClazz(rs.getInt("class_id")),
                        subjectRepository.getSubject(rs.getInt("subject_id")),
                        groupRepository.getGroup(rs.getInt("group_id"))
                )
        );
        return classSubject;
    }


    public List<Pair<Student, Attendance>> getAttendanceByLesson(GetAttendanceByLessonRequest attendance){
        String sql = """
                SELECT * FROM attendance WHERE schedule_id = ? AND date = ?;                
                """;

        return jdbcTemplate.query(sql, new Object[]{attendance.getSchedule_id(), attendance.getDate()}, (rs, rowNum) ->
                    new Pair<>(
                            studentRepository.getStudent(rs.getInt("student_id")),
                            new Attendance(
                                    rs.getInt("student_id"),
                                    rs.getInt("attendane_id"),
                                    rs.getInt("schedule_id"),
                                    rs.getString("status"),
                                    rs.getString("date")
                            )
                    )
                );
    }

    public List<Lesson> getSchedule(int teacher_id){
        String sql = """
                SELECT * FROM class_schedule WHERE teacher_id = ?
                """;
        return jdbcTemplate.query(sql, new Object[]{teacher_id}, (rs, rowNum) ->
                new Lesson(
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
    }

    public List<Teacher> getAllTeachers() {
        String sql = "SELECT teacher_id FROM teachers";

        return jdbcTemplate.query(sql, (rs, rowNum) ->
                getTeacher(rs.getInt("teacher_id"))
        );
    }

    public List<Teacher> getTeachersForSubject(int subject_id){
        String sql = "SELECT teacher_id FROM teacher_subject WHERE subject_id = ?";
        return jdbcTemplate.query(sql, new Object[]{subject_id}, (rs, rowNum) ->
                getTeacher(rs.getInt("teacher_id"))
        );
    }

    public List<Integer> getClassSubjectSchedule(int teacher_id, int class_id, int subject_id,int day_of_week) {
        String sql = """
                SELECT lesson_number FROM class_schedule WHERE teacher_id = ? and class_id = ? and subject_id = ? and day_of_week = ?
                """;
        return jdbcTemplate.query(sql, new Object[]{teacher_id,class_id,subject_id,day_of_week}, (rs, rowNum) ->
                        rs.getInt("lesson_number")
        );
    }

    public List<Attendance> getAttendanceForDateAndLesson(LocalDate date, int lessonNumber, List<Integer> studentIds) {
        if (studentIds.isEmpty()) {
            return new ArrayList<>();
        }

        Integer classId = null;
        try {
            String classIdSql = "SELECT class_id FROM students WHERE student_id = ? LIMIT 1";
            classId = jdbcTemplate.queryForObject(classIdSql, new Object[]{studentIds.get(0)}, Integer.class);
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>(); // nie można kontynuować bez class_id
        }

// --- POBIERZ SCHEDULE_ID DLA TEJ KLASY ---
        Integer scheduleId = null;
        try {
            String sqlSchedule = """
        SELECT schedule_id
        FROM class_schedule
        WHERE day_of_week = ? AND lesson_number = ? AND class_id = ?
        LIMIT 1
    """;
            int dayOfWeek = date.getDayOfWeek().getValue();
            scheduleId = jdbcTemplate.queryForObject(
                    sqlSchedule,
                    new Object[]{dayOfWeek, lessonNumber, classId},
                    Integer.class
            );
        } catch (Exception e) {
            scheduleId = null; // brak planu lekcji też OK
        }

        // --- POBIERZ ISTNIEJĄCE OBECNOŚCI ---
        String sql = String.format("""
        SELECT attendance_id, student_id, schedule_id, date, status
        FROM attendance NATURAL JOIN class_schedule
        WHERE date = CAST(? AS DATE)
          AND lesson_number = ?
          AND student_id IN (%s)
    """, studentIds.stream().map(id -> "?").collect(Collectors.joining(",")));

        List<Object> params = new ArrayList<>();
        params.add(date.toString());
        params.add(lessonNumber);
        params.addAll(studentIds);

        List<Attendance> found = jdbcTemplate.query(sql, params.toArray(), (rs, rowNum) -> new Attendance(
                rs.getInt("student_id"),
                rs.getInt("attendance_id"),
                rs.getObject("schedule_id") != null ? rs.getInt("schedule_id") : null,
                rs.getString("status"),
                rs.getString("date")
        ));

        // --- DODAJ BRAKUJĄCE DOMYŚLNE (PRESENCE) ---
        Set<Integer> foundIds = found.stream()
                .map(Attendance::getStudent_id)
                .collect(Collectors.toSet());

        for (Integer id : studentIds) {
            if (!foundIds.contains(id)) {
                found.add(new Attendance(
                        0,
                        id,
                        scheduleId,                    // <-- tutaj używamy pobranego schedule_id
                        "presence",
                        date.toString()
                ));
            }
        }

        return found;
    }

}
