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


import com.eeit40.springbootproject.model.ForumReply;
import com.eeit40.springbootproject.service.ForumReplyService;

@Controller
public class ForumReplyController {

	@Autowired
	private ForumReplyService replyService;

	@GetMapping("/ForumAddreply")
	public ModelAndView AddForumreply(ModelAndView mav, @RequestParam(name = "postID") Integer postID) {
		ForumReply reply = new ForumReply();
		reply.setPostID(postID);
		mav.getModel().put("forumreply", reply);

		return mav;
	}

	@GetMapping("/ForumReplylist")
	public ModelAndView Forumreplylistpage(ModelAndView mav) {

		ForumReply lastreply = replyService.getLastreply();
		mav.getModel().put("lastreply", lastreply);

		List<ForumReply> allreply = replyService.findAllreply();
		mav.getModel().put("allreply", allreply);
		mav.setViewName("ForumReplylist");
		
		return mav;

	}

	@PostMapping(value = { "/ForumAddreply", "/ForumReplylist" })
	public ModelAndView insertreply(ModelAndView mav, @Valid @ModelAttribute(name = "forumreply") ForumReply reply,
			BindingResult br) {

		mav.setViewName("ForumAddreply");
		
		if (!br.hasErrors()) {
			replyService.insertReply(reply);
			ForumReply newreply = new ForumReply();
			mav.getModel().put("forumreply", newreply);
			mav.setViewName("redirect:/ForumReplylist");
			
		}

		ForumReply latestreply = replyService.getLastreply();

		mav.getModel().put("lastreply", latestreply);

		System.out.println(latestreply.toString());

		return mav;
	}

	@GetMapping("/ForumEditreply")
	public String editreply(Model model, @RequestParam(name = "replyID") Integer replyid) {
		ForumReply getreply = replyService.getreplyById(replyid);
		model.addAttribute("forumreply", getreply);
		System.out.println(getreply.toString());
		return "ForumEditreply";
	}

	@PostMapping("/ForumEditreply")
	public ModelAndView editreply(ModelAndView mav, @Valid @ModelAttribute(name = "forumreply") ForumReply reply,
			BindingResult br) {

		mav.setViewName("ForumEditreply");

		if (!br.hasErrors()) {
			replyService.insertReply(reply);
			mav.setViewName("redirect:/ForumReplylist");
		}

		return mav;

	}

	@GetMapping("/DeleteForumreply")
	public ModelAndView deletereply(ModelAndView mav, @RequestParam(name = "replyID") Integer replyID) {
		replyService.deleteByreplyId(replyID);

		mav.setViewName("redirect:/ForumReplylist");

		return mav;
	}
}
