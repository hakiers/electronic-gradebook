module com.example.egradebook {
    requires javafx.fxml;
    requires com.fasterxml.jackson.databind;
    requires com.fasterxml.jackson.core;
    requires org.controlsfx.controls;
    requires java.net.http;
    requires org.apache.tomcat.embed.core;
    opens fxml.admin to javafx.fxml;
    opens fxml.shared to javafx.fxml;
    opens fxml.student to javafx.fxml;
    opens com.egradebook.frontend to javafx.fxml;
    opens com.egradebook.frontend.dto to com.fasterxml.jackson.databind;
    exports com.egradebook.frontend;
    exports com.egradebook.frontend.utils to javafx.fxml;
    exports com.egradebook.frontend.model to com.fasterxml.jackson.databind;
    opens com.egradebook.frontend.controller.admin to javafx.fxml;
    opens com.egradebook.frontend.controller.shared to javafx.fxml;
    opens com.egradebook.frontend.controller.student to javafx.fxml;
    opens com.egradebook.frontend.controller.teacher to javafx.fxml;
    opens com.egradebook.frontend.model to javafx.base;
}