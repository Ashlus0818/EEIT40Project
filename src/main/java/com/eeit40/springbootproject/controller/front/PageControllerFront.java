package com.eeit40.springbootproject.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageControllerFront {

	@GetMapping("/front")
	public String front() {
		System.out.println("sdfsdf");
		return "FrontJsp/404-page";
	}
}
