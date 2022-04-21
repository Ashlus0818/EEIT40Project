package com.eeit40.springbootproject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FrontApi {

	@GetMapping(value="/test")
	public List<String> test(){
		List<String> list = new ArrayList<>();
		list.add(1,"name");
		list.add(2,"num");
		
		return list;		
	}
	
}
