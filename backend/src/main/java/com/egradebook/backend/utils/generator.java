package com.egradebook.backend.utils;

import com.egradebook.backend.model.LoginData;
import com.egradebook.backend.repository.UserRepository;
import com.egradebook.backend.repository.utils.CountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.w3c.dom.css.Counter;

@Component
public class generator {
    @Autowired
    private CountRepository countRepository;

    private String generateUsername(String name, String surname){
        int num = countRepository.countByNameAndSurname(name, surname);

        String username = name.toLowerCase() + "_" + surname.toLowerCase().charAt(0) + num;
        return username;
    }

    //to do
    public static LoginData generateLoginData(String name, String surname) {
        return new LoginData(name, surname);
    }

}
