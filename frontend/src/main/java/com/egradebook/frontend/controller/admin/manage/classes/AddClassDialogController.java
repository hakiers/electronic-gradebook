package com.egradebook.frontend.controller.admin.manage.classes;

import javafx.fxml.FXML;
import javafx.stage.Stage;


public class AddClassDialogController {
    private Stage dialogStage;


    public void setDialogStage(Stage s) {
        this.dialogStage = s;
    }

    @FXML
    public void close() {
        dialogStage.close();
    }
}
