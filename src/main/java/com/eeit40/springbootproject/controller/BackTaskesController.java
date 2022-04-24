package com.eeit40.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eeit40.springbootproject.dao.BackTaskesRepository;
import com.eeit40.springbootproject.model.BackTaskes;

@Controller
public class BackTaskesController {
	
	@Autowired
	private BackTaskesRepository dao;
	
	@ResponseBody
	@PostMapping(value="backtaskes/insert")
	public BackTaskes insertBackTaskes() {
		
		BackTaskes resTask= dao.save(task);
		return resTask;
	}
	
	@ResponseBody
	@PostMapping(value="backtaskes/insert2")
	public BackTaskes insertBackTaskes2(String name, String level) {
		BackTaskes task = new BackTaskes(name, level);
		BackTaskes resTask= dao.save(task);
		return resTask;
	}
	
	
}
