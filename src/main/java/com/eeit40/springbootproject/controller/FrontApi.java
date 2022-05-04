package com.eeit40.springbootproject.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.eeit40.springbootproject.dto.MessageDto;

@RestController
public class FrontApi {
	private final String port = "8090";
	
	@CrossOrigin("*")
	@PostMapping(value="/test")
	public List<String> test(@RequestBody MessageDto dto){
		String text = dto.getMsg();
		String text2 = dto.getMsg2();
		System.out.println(text);
		System.out.println(text2);

		List<String> list = new ArrayList<>();
		list.add(0,"name");
		list.add(1,"num");
		
		return list;		
	}
	
}
