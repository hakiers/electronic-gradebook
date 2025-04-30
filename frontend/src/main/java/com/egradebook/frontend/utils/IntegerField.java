package com.egradebook.frontend.utils;

import javafx.scene.control.TextField;
import javafx.scene.control.TextFormatter;

public class IntegerField extends TextField {
    public IntegerField() {
        super();
        this.setTextFormatter(new TextFormatter<>(change -> {
            String newText = change.getControlNewText();
            if (newText.matches("\\d*")) {
                return change;
            }
            return null;
        }));
    }
    public int getValue() {
        String text = this.getText();
        if(text.isEmpty()) {
            return 0;
        }
        return Integer.parseInt(text);
    }
}
