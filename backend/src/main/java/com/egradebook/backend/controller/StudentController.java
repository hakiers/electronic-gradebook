package com.egradebook.backend.controller;


import com.egradebook.backend.model.Grade;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/student")
public class StudentController {

    // /grades -  pobierz swoje oceny get
    // /attendance - obecność get
    // /profile - dane osobowe get
    @GetMapping("/grades")
    public List<Grade> getGrades(){
        return null;
    }
}
