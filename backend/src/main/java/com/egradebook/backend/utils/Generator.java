package com.egradebook.backend.utils;

import com.egradebook.backend.model.LoginData;
import com.egradebook.backend.repository.utils.UtilsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Random;

@Component
public class Generator {
    @Autowired
    private UtilsRepository utilsRepository;

    private String generateUsername(String name, String surname){
        int num = utilsRepository.MaxIdByNameAndSurname(name, surname);

        String username = surname.toLowerCase() + "." + name.toLowerCase() + num;
        return username;
    }

    private String generatePassword(String surname){
        return surname + "!" + new Random().nextInt(100);
    }

    public LoginData generateLoginData(String name, String surname) {
        return new LoginData(generateUsername(name, surname), generatePassword(surname));
    }

}
