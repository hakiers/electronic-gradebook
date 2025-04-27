module com.example.egradebook {
    requires javafx.controls;
    requires javafx.fxml;

    opens com.example.egradebook to javafx.fxml;
    exports com.example.egradebook;
}