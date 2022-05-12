package com.eeit40.springbootproject.controller;

import java.util.List;
import java.util.Objects;

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

import com.eeit40.springbootproject.model.ForumPost;
import com.eeit40.springbootproject.service.ForumPostService;

@Controller
public class ForumFrontPostController {
	@Autowired
	private ForumPostService postService;
	private String superPassword = "zzzz";
	@GetMapping("/ForumFrontPostlist")
	public ModelAndView Forumlistpage(ModelAndView mav) {
		ForumPost lastpost = postService.getLastpost();
		mav.getModel().put("lastpost", lastpost);
		List<ForumPost> allpost = postService.findAllpost();
		mav.getModel().put("allpost", allpost);
		mav.setViewName("FrontJsp/ForumFrontPostlist");
		return mav;
	}
	@GetMapping("/ForumFrontAddpost")
	public ModelAndView AddForumpage(ModelAndView mav) {
		ForumPost post = new ForumPost();
		mav.getModel().put("forumpost", post);
		mav.setViewName("FrontJsp/ForumFrontAddpost");
		return mav;
	}	
	@PostMapping("/ForumFrontAddpost")
	public ModelAndView insertPost(ModelAndView mav, @Valid @ModelAttribute(name = "forumpost") ForumPost post,
			BindingResult br) {					
		mav.setViewName("FrontJsp/ForumFrontAddpost");	
		if (!br.hasErrors()) {
			postService.insertPost(post);
			ForumPost newpost = new ForumPost();
			mav.getModel().put("forumpost", newpost);
			mav.setViewName("redirect:/ForumFrontPostlist#" + post.getPostID());
		}
		return mav;
	}
	@GetMapping("/ForumFrontEditpost")
	public String editPost(Model model,@ModelAttribute(name = "forumPost") ForumPost forumPost ) {
		System.out.println(forumPost);
		Integer postid = forumPost.getPostID();
		ForumPost getpost = postService.getpostById(postid);
		model.addAttribute("forumpost", getpost);
		return "FrontJsp/ForumFrontEditpost";
	}
	@PostMapping("/ForumFrontEditpost")
	public ModelAndView editPost(ModelAndView mav,@ModelAttribute(name = "forumpost") ForumPost post) {
		mav.setViewName("FrontJsp/ForumFrontEditpost");
		ForumPost oldpost = postService.getpostById(post.getPostID());
		String pass = oldpost.getPassword();
		String password = post.getPassword();
		if (password.equals(pass) || password.equals(superPassword)) {
			postService.insertPost(post);
			mav.setViewName("redirect:/ForumFrontOnepost?postID=" + post.getPostID());
		}
		return mav;
	}	
	@GetMapping("/ForumFrontDelete")
	public ModelAndView deletePost(ModelAndView mav,@ModelAttribute(name = "forumpost") ForumPost post) {
		mav.setViewName("FrontJsp/ForumFrontDelete");
		ForumPost oldpost = postService.getpostById(post.getPostID());
		String pass = oldpost.getPassword();
		String password = post.getPassword();
		if (Objects.equals(pass,password) || (Objects.equals(superPassword,password))) {
		postService.deleteBypostId(post.getPostID());
		mav.setViewName("redirect:/ForumFrontPostlist");
		}
		return mav;
	}
}
