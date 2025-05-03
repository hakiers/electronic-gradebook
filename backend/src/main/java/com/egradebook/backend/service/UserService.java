package com.egradebook.backend.service;


import com.egradebook.backend.dto.StudentRegistrationRequest;
import com.egradebook.backend.dto.TeacherRegistrationRequest;
import com.egradebook.backend.dto.UserChangePasswordRequest;
import com.egradebook.backend.dto.UserLoginRequest;
import com.egradebook.backend.exception.ForbiddenOperationException;
import com.egradebook.backend.exception.InvalidCredentialsException;
import com.egradebook.backend.exception.PeselAlreadyExistsException;
import com.egradebook.backend.exception.UnauthorizedException;
import com.egradebook.backend.model.LoginData;
import com.egradebook.backend.model.Student;
import com.egradebook.backend.model.Teacher;
import com.egradebook.backend.model.User;
import com.egradebook.backend.repository.UserRepository;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {
}
