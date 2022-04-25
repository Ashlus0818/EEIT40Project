package com.eeit40.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.BackTaskes;
import com.eeit40.springbootproject.service.BackTaskesService;

@Controller
public class PageController {
	@Autowired
	private BackTaskesService bService;
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/backTask")
	public ModelAndView BackTask(ModelAndView mav, @RequestParam(name="p", defaultValue = "1") Integer pageNumber) {
		Page<BackTaskes> page = bService.findByPage(pageNumber);
		mav.getModel().put("page", page);
		mav.setViewName("backTask");
		
		return mav;
	}
	
	@GetMapping("/post")
	public String forumpost() {
		return "Forumpost";
	}
}
 