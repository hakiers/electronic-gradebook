package com.example.egradebook.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.example.egradebook.model.User;
import com.example.egradebook.repository.UserRepository;

@Service
public class UserService {
  private final UserRepository userRepo;
  private final BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

  public UserService(UserRepository userRepo) {
    this.userRepo = userRepo;
  }

  public void register(User u) {
    u.setPasswordHash(encoder.encode(u.getPasswordHash()));
    userRepo.save(u);
  }

  public String login(User u) {
    User db = userRepo.findByUsername(u.getUsername()).orElse(null);
    if (db != null && encoder.matches(u.getPasswordHash(), db.getPasswordHash())) {
      return "OK";
    }
    return "NOK";
  }
}
