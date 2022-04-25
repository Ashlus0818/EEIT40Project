package com.eeit40.springbootproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.Forumpost;
import com.eeit40.springbootproject.service.ForumpostService;

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
	
	@GetMapping("/AddForumpost")
	public ModelAndView AddForumpage(ModelAndView mav) {
		
		Forumpost post = new Forumpost();
		
		mav.getModel().put("forumpost", post);
		
		return mav;
	}
	
	@Autowired
	private ForumpostService postService;
	@GetMapping("/Forumpostlist")
	public ModelAndView Forumlistpage(ModelAndView mav) {
		
		Forumpost lastpost = postService.getLastpost();		
		mav.getModel().put("lastpost", lastpost);		
	
		
		List<Forumpost> allpost = postService.findAllpost();
		mav.getModel().put("allpost", allpost);
		mav.setViewName("Forumpostlist");
		
		return mav;
	}
	
	
}
 