package com.egradebook.backend.service;

import com.egradebook.backend.dto.ClazzDto;
import com.egradebook.backend.dto.StudentDto;
import com.egradebook.backend.model.Clazz;
import com.egradebook.backend.model.Lesson;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.repository.ClassRepository;
import com.egradebook.backend.request.AddScheduleRequest;
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

    public List<Lesson> getSchedule(int class_id, HttpSession session) {
        Clazz clazz = classRepository.getClazz(class_id);
        return clazz.getSchedule();
    }

    public void addLesson(AddScheduleRequest request, HttpSession session) {
        Lesson lesson = new Lesson(request);
        Clazz clazz = classRepository.getClazz(lesson.getClass_id());
        clazz.addLesson(lesson);
    }
}
