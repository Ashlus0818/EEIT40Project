package com.eeit40.springbootproject.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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

	@GetMapping("/ForumAddpost")
	public ModelAndView AddForumpage(ModelAndView mav) {
		Forumpost post = new Forumpost();
		mav.getModel().put("forumpost", post);

		return mav;
	}

	@GetMapping("/Forumpostlist")
	public ModelAndView Forumlistpage(ModelAndView mav) {
		
		Forumpost lastpost = postService.getLastpost();
		mav.getModel().put("lastpost", lastpost);

		List<Forumpost> allpost = postService.findAllpost();
		mav.getModel().put("allpost", allpost);
		mav.setViewName("Forumpostlist");

		return mav;
	}

	@PostMapping(value = { "/ForumAddpost", "/Forumpostlist" })
	public ModelAndView insertPost(ModelAndView mav, @Valid @ModelAttribute(name = "forumpost") Forumpost post,
			BindingResult br) {

		mav.setViewName("ForumAddpost");

		if (!br.hasErrors()) {
			postService.insertPost(post);
			Forumpost newpost = new Forumpost();
			mav.getModel().put("forumpost", newpost);
			mav.setViewName("redirect:/Forumpostlist");
		}

		Forumpost latestpost = postService.getLastpost();

		mav.getModel().put("lastpost", latestpost);

		return mav;
	}

	@GetMapping("/ForumEditpost")
	public String editPost(Model model, @RequestParam(name = "postID") Integer postid) {
		Forumpost getpost = postService.getpostById(postid);
		model.addAttribute("forumpost", getpost);

		return "ForumEditpost";
	}

	@PostMapping("/ForumEditpost")
	public ModelAndView editPost(ModelAndView mav, @Valid @ModelAttribute(name = "forumpost") Forumpost post,
			BindingResult br) {

		mav.setViewName("ForumEditpost");

		if (!br.hasErrors()) {
			postService.insertPost(post);
			mav.setViewName("redirect:/Forumpostlist");
		}

		return mav;

	}

	@GetMapping("/DeleteForumpost")
	public ModelAndView deletePost(ModelAndView mav, @RequestParam(name = "postID") Integer postID) {
		postService.deleteBypostId(postID);

		mav.setViewName("redirect:/Forumpostlist");

		return mav;
	}

}
