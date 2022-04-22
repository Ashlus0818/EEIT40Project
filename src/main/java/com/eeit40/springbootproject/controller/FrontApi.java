package com.eeit40.springbootproject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FrontApi {
	private final String port = "8090";
	
	@CrossOrigin("*")
	@PostMapping(value="/test")
	public List<String> test(){
		List<String> list = new ArrayList<>();
		list.add(0,"name");
		list.add(1,"num");
		
		return list;		
	}
	
}
