package com.example.egradebook.controller;
import javafx.fxml.FXML;
import javafx.scene.control.*;
import com.fasterxml.jackson.databind.*;
import java.net.http.*;
import java.net.URI;
import java.util.List;
public class StudentController {
  @FXML TableView<Student> table;
  @FXML void onRefresh() {
    // TODO: GET /api/students → parse JSON → table.getItems().setAll(...)
  }
  @FXML void onAddSample() {
    // TODO: POST /api/students with sample JSON → onRefresh()
  }
}
