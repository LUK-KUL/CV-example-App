package com.example.cvapp.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class SkillsController {
    @GetMapping("/skills")
    public String getSkillsList(Model model) {
        return "skills/skills";
    }
}
