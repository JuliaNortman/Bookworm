package ua.knu.bookworm.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping(value = {"/api/", "/api/login"})
    public String entry() {
        return "index";
    }
}