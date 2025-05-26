package com.egradebook.backend.service;

import com.egradebook.backend.dto.ClazzDto;
import com.egradebook.backend.model.Clazz;
import com.egradebook.backend.model.Lesson;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.repository.ClassRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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

    public List<Student> getStudentsInClass(int class_id, HttpSession session){
        Clazz clazz = classRepository.getClazz(class_id);
        return clazz.getStudents();
    }

    public List<Lesson> getScheulde(int class_id, HttpSession session) {
        Clazz clazz = classRepository.getClazz(class_id);
        return clazz.getScheulde();
    }
}
