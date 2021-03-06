package com.eeit40.springbootproject.controller;

import java.util.List;
import java.util.Objects;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.ForumPost;
import com.eeit40.springbootproject.model.ForumReply;
import com.eeit40.springbootproject.service.ForumPostService;
import com.eeit40.springbootproject.service.ForumReplyService;

@Controller
public class ForumFrontReplyController {
	@Autowired
	private ForumReplyService replyService;
	private String superPassword = "zzzz";
	@Autowired
	private ForumPostService postService;

	@GetMapping("/ForumFrontReplylist")
	public ModelAndView Forumreplylistpage(ModelAndView mav) {
		ForumReply lastreply = replyService.getLastreply();
		mav.getModel().put("lastreply", lastreply);
		List<ForumReply> allreply = replyService.findAllreply();
		mav.getModel().put("allreply", allreply);
		mav.setViewName("FrontJsp/ForumFrontReplylist");
		return mav;
	}

	@GetMapping("/ForumFrontOnepost")
	public ModelAndView Getpostandreply(ModelAndView mav, @ModelAttribute(name = "forumReply") ForumReply reply) {
		mav.getModel().put("postID", reply);
		ForumPost post = postService.getpostById(reply.getPostID());
		mav.getModel().put("post", post);
		List<ForumReply> getreply = replyService.getreplyBypostID(reply.getPostID());
		mav.getModel().put("getreply", getreply);
		mav.setViewName("FrontJsp/ForumFrontOnepost");
		return mav;
	}

	@GetMapping("/ForumFrontAddreply")
	public ModelAndView AddForumreply(ModelAndView mav, @RequestParam(name = "postID") Integer postID) {
		ForumReply reply = new ForumReply();
		reply.setPostID(postID);
		ForumPost post = new ForumPost();
		post = postService.getpostById(postID);
		mav.getModel().put("post", post);
		mav.getModel().put("forumReply", reply);
		mav.setViewName("FrontJsp/ForumFrontAddreply");
		return mav;
	}

	@PostMapping("/ForumFrontAddreply")
	public ModelAndView insertreply(ModelAndView mav, @ModelAttribute(name = "forumReply") ForumReply reply) {
		mav.setViewName("ForumFrontAddreply");
		replyService.insertReply(reply);
		ForumReply newreply = new ForumReply();
		mav.getModel().put("forumpost", newreply);
		mav.setViewName("redirect:/ForumFrontOnepost?postID=" + reply.getPostID());
		return mav;
	}

	@GetMapping("/ForumFrontDeletereply")
	public ModelAndView deleteReply(ModelAndView mav, @ModelAttribute(name = "forumReply") ForumReply reply) {
		System.out.println(reply);
		mav.setViewName("FrontJsp/ForumFrontDeletereply");	
		ForumReply oldreply = replyService.getreplyById(reply.getReplyID());
		String pass = oldreply.getPassword();
		String password = reply.getPassword();
		if (Objects.equals(pass, password) || (Objects.equals(superPassword, password))) {
			replyService.deleteByreplyId(reply.getReplyID());
			mav.setViewName("redirect:/ForumFrontPostlist");
		}
		return mav;
	}
}
