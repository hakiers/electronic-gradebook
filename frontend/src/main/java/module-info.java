module com.example.egradebook {
    requires javafx.controls;
    requires javafx.fxml;
    requires javafx.graphics;
    //requires transitive com.egradebook.backend;
    requires org.apache.tomcat.embed.core;
    opens com.egradebook.frontend to javafx.fxml;
    opens com.egradebook.frontend.controller to javafx.fxml;
    exports com.egradebook.frontend;
}