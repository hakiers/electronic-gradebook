package com.egradebook.frontend.service;

import javafx.util.Pair;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;


public class ConnectionService {
    private static final HttpClient client = HttpClient.newHttpClient();
    public static Pair<Integer,String> ping() {
        try
        {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/debug/ping"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
            return new Pair<>(response.statusCode(),response.body());
        }catch (Exception e) {
            return new Pair<>(0,"");
        }
    }
    public static Pair<Integer,String> status() {
        try
        {
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(new URI("http://localhost:8080/api/debug/dbstatus"))
                    .header("Content-Type", "application/json")
                    .GET()
                    .build();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
            System.out.println(response.statusCode());
            System.out.println(response.body());
            return new Pair<>(response.statusCode(),response.body());
        }catch (Exception e) {
            return new Pair<>(0,"");
        }
    }
}
