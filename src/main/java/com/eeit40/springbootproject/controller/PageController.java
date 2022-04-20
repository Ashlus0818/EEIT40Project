package com.eeit40.springbootproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
	
	@GetMapping("/")
	public String index() {
		return "/FrontPage/html/index.html";
	}
	
	@GetMapping("/enterback")
	public String enterback() {
		return "WEB-INF/jsp/BackTemplate.jsp";
	}
}
 