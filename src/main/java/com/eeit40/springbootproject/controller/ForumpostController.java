package com.eeit40.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.Forumpost;
import com.eeit40.springbootproject.service.ForumpostService;

@Controller
public class ForumpostController {

	@Autowired
	private ForumpostService postService;

	@PostMapping(value = { "/AddForumpost", "/Forumpostlist" })
	public ModelAndView insertPost(ModelAndView mav, @ModelAttribute Forumpost post) {
		postService.insertPost(post);

		Forumpost newpost = new Forumpost();

		mav.getModel().put("forumpost", newpost);

		Forumpost latestpost = postService.getLastpost();

		mav.getModel().put("lastpost", latestpost);

		mav.setViewName("AddForumpost");

		return mav;
	}
	
	@GetMapping("/EditForumpost")
	public String editPost(Model model, @RequestParam(name="postid") Integer postid) {
		Forumpost getpost = postService.getpostById(postid);
		model.addAttribute("forumpost", getpost);
		
		return "EditForumpost";
	}
	

}
