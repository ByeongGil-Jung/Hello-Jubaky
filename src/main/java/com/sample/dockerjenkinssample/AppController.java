package com.sample.dockerjenkinssample;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppController {

    @GetMapping("/")
    public String version(Model model) {
        model.addAttribute("version", "0.0.0");

        return "index";
    }
}
