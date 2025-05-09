package com.egradebook.backend;


import com.egradebook.backend.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class StartupRunner implements CommandLineRunner {
    @Autowired
    private AdminService userService;

    @Override
    public void run(String... args) throws Exception {
        userService.createAdmin();
        userService.createTeacher();
        userService.createStudent();
        System.out.println("Startup logic here... tymczasowe");
    }
}
