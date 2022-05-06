package com.eeit40.springbootproject.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@PostMapping(value="backtaskes/insert")
	public String insertBackTaskes(@RequestParam("taskName") String name, 
			@RequestParam("taskTitle") String title) {
		bService.insert(new BackTaskes(name, title));
		return "redirect:/backTask";
	}
	
	@ResponseBody
	@PostMapping(value="backtaskes/insert2")
	public BackTaskes insertBackTaskes2(String name, String level) {
		BackTaskes task = new BackTaskes(name, level);
		BackTaskes resTask= bService.insert(task);
		return resTask;
	}
	
	@PostMapping(value="backtaskes/delete")
	public String deleteById(ModelAndView mav, @RequestParam("taskId") Integer id) {
		boolean flag = bService.deleteById(id);
		return "redirect:/backTask";
	}
	
	@PostMapping(value="backtaskes/update")
	public String updateById(ModelAndView mav, @RequestParam("taskId") Integer id, @RequestParam("taskName") String name, 
			@RequestParam("taskTitle") String title) {
		bService.insert(new BackTaskes(id, name, title, new Date(), new Date()));
		return "redirect:/backTask";
	}
	
}
