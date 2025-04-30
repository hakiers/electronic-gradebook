package com.egradebook.backend.exception;

public class DatabaseUnavailableException extends RuntimeException {
    public DatabaseUnavailableException(String message) {
        super(message);
    }
}
