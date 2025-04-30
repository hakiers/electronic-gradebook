module com.example.egradebook {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.graphics;
    requires java.net.http;
    requires com.fasterxml.jackson.databind;
    requires com.fasterxml.jackson.core;
    opens fxml to javafx.fxml;

    opens com.egradebook.frontend to javafx.fxml;
    opens com.egradebook.frontend.controller to javafx.fxml;
    opens com.egradebook.frontend.dto to com.fasterxml.jackson.databind;
    exports com.egradebook.frontend;
    exports com.egradebook.frontend.utils to javafx.fxml;
}