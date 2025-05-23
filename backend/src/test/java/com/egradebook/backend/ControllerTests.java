package com.egradebook.backend;

import com.egradebook.backend.request.UserLoginRequest;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;


@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class ControllerTests {

    @Autowired
    private TestRestTemplate restTemplate;


    public ResponseEntity<String> login(String username, String password) throws Exception{
        UserLoginRequest request = new UserLoginRequest(username, password);
        ResponseEntity<String> response = restTemplate.postForEntity("/api/auth/login",
                       request, String.class);
        return response;
    }

    public ResponseEntity<String> logout() throws Exception{
        ResponseEntity<String> response = restTemplate.postForEntity("/api/auth/logout", null, String.class);
        return response;
    }

    @Test
    public void loginAdmin() throws Exception {
        ResponseEntity<String> response = login("admin", "admin");
        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals("admin", response.getBody());

        assertEquals(HttpStatus.OK, logout().getStatusCode());
    }

    @Test
    public void loginNotExistingUser() throws Exception {
        ResponseEntity<String> response = login("nonExistentUser", "nonExistentUser");
        assertEquals(HttpStatus.UNAUTHORIZED, response.getStatusCode());
        assertEquals("Invalid username or password", response.getBody());

        assertEquals(HttpStatus.OK, logout().getStatusCode());
    }

    @Test
    public void nonAdminAddStudent() throws Exception {


        assertEquals(HttpStatus.OK, logout().getStatusCode());
    }
}
