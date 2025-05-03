package com.egradebook.frontend.service;

import com.egradebook.frontend.dto.FrontendLoginRequest;
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
    private static final HttpClient client;
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
            printCookies();
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
        try
        {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/auth/logout"))
                    .header("Content-Type", "application/json")
                    .POST(HttpRequest.BodyPublishers.noBody())
                    .build();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
            System.out.println(response.statusCode());
            System.out.println(response.body());
            printCookies();
            currentRole = null;
            currentUsername = null;
        }catch (Exception e) {
        }
    }
    private static void printCookies() {
        List<HttpCookie> cookies = cookieManager.getCookieStore().getCookies();
        System.out.println("Aktualne ciasteczka:");
        cookies.forEach(cookie -> System.out.println(cookie.getName() + "=" + cookie.getValue()));
    }
}
