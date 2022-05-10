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

import com.eeit40.springbootproject.model.ForumPost;
import com.eeit40.springbootproject.service.ForumPostService;

@Controller
public class ForumFrontPostController {
	@Autowired
	private ForumPostService postService;
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
			mav.setViewName("redirect:/FrontJsp/ForumFrontPostlist#" + post.getPostID());
		}
		ForumPost latestpost = postService.getLastpost();
		mav.getModel().put("lastpost", latestpost);
		return mav;
	}
	@GetMapping("/ForumFrontEditpost")
	public String editPost(Model model,@ModelAttribute(name = "forumPost") ForumPost forumPost ) {
		Integer postid = forumPost.getPostID();
		ForumPost getpost = postService.getpostById(postid);
		model.addAttribute("forumpost", getpost);
		return "ForumFrontEditpost";
	}
	@PostMapping("/ForumFrontEditpost")
	public ModelAndView editPost(ModelAndView mav,@ModelAttribute(name = "forumpost") ForumPost post,
			BindingResult br) {
		mav.setViewName("FrontJsp/ForumFrontEditpost");
		if (!br.hasErrors()) {
			postService.insertPost(post);
			mav.setViewName("redirect:/FrontJsp/ForumFrontOnepost?postID=" + post.getPostID());
		}
		return mav;
	}
	@GetMapping("/DeleteFrontForumpost")
	public ModelAndView deletePost(ModelAndView mav, @RequestParam(name = "postID") Integer postID) {
		postService.deleteBypostId(postID);
		mav.setViewName("redirect:/ForumFrontPostlist");
		return mav;
	}
}
