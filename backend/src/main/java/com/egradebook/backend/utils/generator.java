package com.egradebook.backend.utils;

import com.egradebook.backend.model.LoginData;
import com.egradebook.backend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class generator {
    @Autowired
    private UserRepository userRepository;

    private String generateUsername(String name, String surname){
        int num = userRepository.countByNameAndSurname(name, surname);

        String username = name.toLowerCase() + "_" + surname.toLowerCase().charAt(0) + num;
        return username;
    }

    //to do
    public static LoginData generateLoginData(String name, String surname) {
        return new LoginData(name, surname);
    }

}
