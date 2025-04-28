module com.example.egradebook {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.graphics;

    opens com.egradebook.frontend to javafx.fxml;
    exports com.egradebook.frontend;
}