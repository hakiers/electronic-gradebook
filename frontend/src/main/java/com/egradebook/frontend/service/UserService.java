package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.FrontendLoginRequest;
import com.egradebook.frontend.dto.UserChangePasswordRequest;
import com.egradebook.frontend.dto.UserContactData;
import com.egradebook.frontend.dto.UserPersonalData;
import com.egradebook.frontend.model.Subject;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import javafx.util.Pair;

import java.net.*;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class UserService {
    private static String currentRole;
    private static String currentUsername;
    public static final HttpClient client;
    private static final ObjectMapper mapper = new ObjectMapper();
    private static final CookieManager cookieManager = new CookieManager();
    static {
        CookieHandler.setDefault(cookieManager);
        client = HttpClient.newBuilder()
                .cookieHandler(CookieHandler.getDefault())
                .build();
    }

    public static String getCurrentRole() {
        return currentRole;
    }

    public static void setCurrentRole(String role) {
        currentRole = role;
    }

    public static String getCurrentUsername() {
        return currentUsername;
    }

    public static void setCurrentUsername(String username) {
        currentUsername = username;
    }
    public static Pair<Integer,String> login(String username, String password) {
        try {
            FrontendLoginRequest request = new FrontendLoginRequest(username, password);
            String json =mapper.writeValueAsString(request);

            HttpRequest httpRequest = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/auth/login"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();

            HttpResponse<String> response = client.send(httpRequest, HttpResponse.BodyHandlers.ofString());
            if (response.statusCode() == 200) {
                currentRole = response.body();
                currentUsername = username;
            }
            return new Pair<>(response.statusCode(), response.body());
        } catch (Exception e) {
            return new Pair<>(0,"");
        }
    }
    public static void logout() {
        try {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/auth/logout"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.noBody())
                    .build();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
            //System.out.println(response.statusCode());
            System.out.println(response.body());
            currentRole = null;
            currentUsername = null;
        }catch (Exception e) {
        }
    }

    public static Pair<Integer,String> changePassword(String newPassword) {
        try {
            UserChangePasswordRequest request = new UserChangePasswordRequest(currentUsername,newPassword);
            String json =mapper.writeValueAsString(request);
            HttpRequest httpRequest = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/auth/change-password"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.ofString(json))
                    .build();
            HttpResponse<String> response = client.send(httpRequest, HttpResponse.BodyHandlers.ofString());
            System.out.println(response.body());
            return new Pair<>(response.statusCode(), response.body());
        }catch (Exception e) {
            return new Pair<>(0,"");
        }
    }

    public static Pair<Integer, UserContactData> UserContactData(int user_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/users/"+user_id+"/contact"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if(response.statusCode() == 200) {
                UserContactData contact = mapper.readValue(
                        response.body(),
                        new TypeReference<UserContactData>() {}
                );
                return new Pair<>(response.statusCode(), contact);
            }
            else {
                return new Pair<>(response.statusCode(), null);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }

    public static Pair<Integer, UserPersonalData> UserPersonalData(int user_id) {
        try {
            if (UserService.getCurrentUsername() == null || UserService.getCurrentRole() == null) {
                return new Pair<>(401, null);
            }

            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/users/"+user_id+"/personal"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();

            HttpResponse<String> response = UserService.client.send(request, HttpResponse.BodyHandlers.ofString());

            if(response.statusCode() == 200) {
                UserPersonalData personal = mapper.readValue(
                        response.body(),
                        new TypeReference<UserPersonalData>() {}
                );
                return new Pair<>(response.statusCode(), personal);
            }
            else {
                return new Pair<>(response.statusCode(), null);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return new Pair<>(500, null);
        }
    }
}
