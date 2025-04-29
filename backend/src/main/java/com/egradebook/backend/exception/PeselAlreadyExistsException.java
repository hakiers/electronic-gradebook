package com.egradebook.backend.exception;

public class PeselAlreadyExistsException extends RuntimeException {
    public PeselAlreadyExistsException(String message) {
        super(message);
    }
}
