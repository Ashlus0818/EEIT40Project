package com.eeit40.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.service.CustomerMessageService;

@Controller
public class PageController {
	
	@Autowired
	private CustomerMessageService cums;
	
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
	
	@RequestMapping(value="/backmessage")
	public ModelAndView viewMessages(ModelAndView mav, @RequestParam(name="p", defaultValue = "1") Integer pageNumber) {
		Page<CustomerMessage> page = cums.findByPage(pageNumber);
		
		mav.getModel().put("page", page);
		mav.setViewName("backmessage");
		
		return mav;
	}
}
 