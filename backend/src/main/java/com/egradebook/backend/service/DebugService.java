package com.egradebook.backend.service;

import com.egradebook.backend.exception.DatabaseUnavailableException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class DebugService {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void checkDatabaseConnection() {
        try {
            jdbcTemplate.execute("SELECT 1");
        } catch (Exception e) {
            throw new DatabaseUnavailableException("No connection");
        }
    }
}
