package com.eeit40.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.BackTaskes;
import com.eeit40.springbootproject.service.BackTaskesService;

@Controller
public class BackTaskesController {
	
	@Autowired
	private BackTaskesService bService;
	
	@ResponseBody
	@PostMapping(value="backtaskes/insert")
	public BackTaskes insertBackTaskes(BackTaskes task) {
		return bService.insert(task);
	}
	
	@ResponseBody
	@PostMapping(value="backtaskes/insert2")
	public BackTaskes insertBackTaskes2(String name, String level) {
		BackTaskes task = new BackTaskes(name, level);
		BackTaskes resTask= bService.insert(task);
		return resTask;
	}
	
	@PostMapping(value="backtaskes/delete")
	public String deleteById(ModelAndView mav, @RequestParam("num") Integer id) {
		boolean flag = bService.deleteById(id);
		return "redirect:/backTask";
	}
	
}
