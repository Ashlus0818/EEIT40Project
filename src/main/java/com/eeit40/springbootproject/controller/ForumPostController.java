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
public class ForumPostController {

	@Autowired
	private ForumPostService postService;

	@GetMapping("/ForumAddpost")
	public ModelAndView AddForumpage(ModelAndView mav) {
		ForumPost post = new ForumPost();
		mav.getModel().put("forumpost", post);

		System.out.println(post.toString());
		return mav;
	}

	@GetMapping(value = {"/ForumPostlist","/ForumEditpost"})
	public ModelAndView Forumlistpage(ModelAndView mav) {

		ForumPost lastpost = postService.getLastpost();
		mav.getModel().put("lastpost", lastpost);

		List<ForumPost> allpost = postService.findAllpost();
		mav.getModel().put("allpost", allpost);
		mav.setViewName("ForumPostlist");

		return mav;
	}

	@PostMapping(value = { "/ForumAddpost", "/ForumPostlist" })
	public ModelAndView insertPost(ModelAndView mav, @Valid @ModelAttribute(name = "forumpost") ForumPost post,
			BindingResult br) {

		mav.setViewName("ForumAddpost");

		if (!br.hasErrors()) {
			postService.insertPost(post);
			ForumPost newpost = new ForumPost();
			mav.getModel().put("forumpost", newpost);
			mav.setViewName("redirect:/ForumPostlist");
		}

		ForumPost latestpost = postService.getLastpost();

		mav.getModel().put("lastpost", latestpost);

		return mav;
	}

	@GetMapping("/ForumEditpost")
	public String editPost(Model model, @RequestParam(name = "postID") Integer postid) {
		ForumPost getpost = postService.getpostById(postid);
		model.addAttribute("forumpost", getpost);

		return "ForumEditpost";
	}

	@PostMapping("/ForumEditpost")
	public ModelAndView editPost(ModelAndView mav, @Valid @ModelAttribute(name = "forumpost") ForumPost post,
			BindingResult br) {

		mav.setViewName("ForumEditpost");

		if (!br.hasErrors()) {
			postService.insertPost(post);
			mav.setViewName("redirect:/ForumPostlist");
		}

		return mav;

	}

	@GetMapping("/DeleteForumpost")
	public ModelAndView deletePost(ModelAndView mav, @RequestParam(name = "postID") Integer postID) {
		postService.deleteBypostId(postID);

		mav.setViewName("redirect:/ForumPostlist");

		return mav;
	}

}
