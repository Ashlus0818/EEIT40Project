package com.eeit40.springbootproject.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
public class WebController {
    @RequestMapping({ "/" })
    public String getWeb() {
        return "index";
    }
}