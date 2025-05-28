package com.egradebook.backend.dto;

import com.egradebook.backend.model.Group;
import com.egradebook.backend.model.Subject;

public class TeacherClassSubjectDto {
    private TeacherDto teacher;
    private ClazzDto clazz;
    private Subject subject;
    private Group group;

    public TeacherClassSubjectDto() {

    }
}
