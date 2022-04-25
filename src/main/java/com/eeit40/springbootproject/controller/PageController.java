package com.eeit40.springbootproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/BackInsert")
	public String BackInsert() {
		return "BackInsert";
	}
	
	@GetMapping("/post")
	public String forumpost() {
		return "Forumpost";
	}
	
	@GetMapping("/backmessage")
	public String backmessage() {
		return "backmessage";
	}
}
 