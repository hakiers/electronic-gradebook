package com.egradebook.backend.service;

import com.egradebook.backend.dto.ClazzDto;
import com.egradebook.backend.dto.LessonDto;
import com.egradebook.backend.dto.StudentDto;
import com.egradebook.backend.dto.TeacherDto;
import com.egradebook.backend.model.*;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.request.AddScheduleRequest;
import com.egradebook.backend.request.AddSubjectGroupRequest;
import com.egradebook.backend.utils.Pair;
import com.egradebook.backend.utils.Triple;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Repository
public class ClassService {
    @Autowired
    ClassRepository classRepository;

    public ClazzDto getClass(int class_id, HttpSession session) {
        Clazz clazz = classRepository.getClazz(class_id);
        return new ClazzDto(clazz);
    }

    public List<ClazzDto> getAllClasses(HttpSession session) {
        List<Integer> classes = classRepository.getAllClassId(String.valueOf((LocalDate.now().getYear())-5));
        List<ClazzDto> clazzDtoList = new ArrayList<>();
        for (Integer class_id : classes) {
            Clazz clazz = classRepository.getClazz(class_id);
            clazzDtoList.add(new ClazzDto(clazz));
        }
        return clazzDtoList;
    }

    public List<StudentDto> getStudentsInClass(int class_id, HttpSession session){
        Clazz clazz = classRepository.getClazz(class_id);
        List<StudentDto> students = clazz.getStudents().stream().map(StudentDto::new).collect(Collectors.toList());
        return students;
    }

    public List<LessonDto> getSchedule(int class_id, HttpSession session) {
        Clazz clazz = classRepository.getClazz(class_id);
        List<LessonDto> schedule = clazz.getSchedule().stream().map(LessonDto::new).collect(Collectors.toList());
        return schedule;
    }

    public void addLesson(AddScheduleRequest request, HttpSession session) {
        Lesson lesson = new Lesson(request);
        Clazz clazz = classRepository.getClazz(lesson.getClass_id());
        clazz.addLesson(lesson);
    }


    public void removeLesson(int schedule_id, HttpSession session) {
        classRepository.removeLesson(schedule_id);
    }

    public void addSubjectGroup(AddSubjectGroupRequest request, HttpSession session) {
        classRepository.addSubjectGroup(request);
    }


}
