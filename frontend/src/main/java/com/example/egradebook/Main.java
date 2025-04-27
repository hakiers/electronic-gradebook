package com.example.egradebook;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
  @Override
  public void start(Stage s) throws Exception {
    s.setScene(new Scene(FXMLLoader.load(
      getClass().getResource("/fxml/Login.fxml"))));
    s.show();
  }
  public static void main(String[] args) { launch(args); }
}
