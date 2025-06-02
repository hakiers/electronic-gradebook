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
    exports com.egradebook.frontend;
    exports com.egradebook.frontend.utils to javafx.fxml;
    opens com.egradebook.frontend.controller.admin to javafx.fxml;
    opens com.egradebook.frontend.controller.shared to javafx.fxml;
    opens com.egradebook.frontend.controller.student to javafx.fxml;
    opens com.egradebook.frontend.controller.teacher to javafx.fxml;
    opens com.egradebook.frontend.utils to com.fasterxml.jackson.databind;
    opens com.egradebook.frontend.model to com.fasterxml.jackson.databind, javafx.base;

    requires javafx.controls;
    requires spring.security.crypto;
    requires spring.context;

    exports com.egradebook.frontend.controller.student;
    exports com.egradebook.frontend.dto;
    exports com.egradebook.frontend.request;
    opens com.egradebook.frontend.dto to com.fasterxml.jackson.databind, javafx.base;
    exports com.egradebook.frontend.controller.admin;
    exports com.egradebook.frontend.controller.admin.manage.students;
    opens com.egradebook.frontend.controller.admin.manage.students to javafx.fxml;
    exports com.egradebook.frontend.controller.admin.manage.classes;
    opens com.egradebook.frontend.controller.admin.manage.classes to javafx.fxml;
    exports com.egradebook.frontend.controller.admin.manage.teachers;
    opens com.egradebook.frontend.controller.admin.manage.teachers to javafx.fxml;
}