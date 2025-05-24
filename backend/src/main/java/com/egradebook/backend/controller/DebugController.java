package com.egradebook.backend.controller;

import com.egradebook.backend.service.DebugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/debug")
public class DebugController {

    @Autowired
    private DebugService debugService;

    @GetMapping("/ping")
    public ResponseEntity<String> ping() {
        return ResponseEntity.ok("API works ✅");
    }

    @GetMapping("/dbstatus")
    public ResponseEntity<?> dbStatus(){
        debugService.checkDatabaseConnection();
        return ResponseEntity.ok("Connection OK ✅");
    }

}
