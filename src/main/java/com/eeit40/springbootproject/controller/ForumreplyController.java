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
import com.eeit40.springbootproject.model.Forumreply;
import com.eeit40.springbootproject.service.ForumreplyService;

@Controller
public class ForumreplyController {

	@Autowired
	private ForumreplyService replyService;

	@GetMapping("/AddForumreply")
	public ModelAndView AddForumreply(ModelAndView mav) {
		Forumreply reply = new Forumreply();
		mav.getModel().put("forumreply", reply);

		return mav;
	}

	@GetMapping("/Forumreplylist")
	public ModelAndView Forumreplylistpage(ModelAndView mav) {

		Forumreply lastreply = replyService.getLastreply();
		mav.getModel().put("lastreply", lastreply);

		List<Forumreply> allreply = replyService.findAllreply();
		mav.getModel().put("allreply", allreply);
		mav.setViewName("Forumreplylist");

		return mav;
	}

	@PostMapping(value = { "/AddForumreply", "/Forumreplylist" })
	public ModelAndView insertreply(ModelAndView mav, @Valid @ModelAttribute(name = "forumreply") Forumreply reply,
			BindingResult br) {

		mav.setViewName("AddForumreply");

		if (!br.hasErrors()) {
			replyService.insertReply(reply);
			Forumreply newreply = new Forumreply();
			mav.getModel().put("forumreply", newreply);
			mav.setViewName("redirect:/Forumreplylist");
		}

		Forumreply latestreply = replyService.getLastreply();

		mav.getModel().put("lastreply", latestreply);

		return mav;
	}

	@GetMapping("/EditForumreply")
	public String editreply(Model model, @RequestParam(name = "replyID") Integer replyid) {
		Forumreply getreply = replyService.getreplyById(replyid);
		model.addAttribute("forumreply", getreply);

		return "EditForumreply";
	}

	@PostMapping("/EditForumreply")
	public ModelAndView editreply(ModelAndView mav, @Valid @ModelAttribute(name = "forumreply") Forumreply reply,
			BindingResult br) {

		mav.setViewName("EditForumreply");

		if (!br.hasErrors()) {
			replyService.insertReply(reply);
			mav.setViewName("redirect:/Forumreplylist");
		}

		return mav;

	}

	@GetMapping("/DeleteForumreply")
	public ModelAndView deletereply(ModelAndView mav, @RequestParam(name = "replyID") Integer replyID) {
		replyService.deleteByreplyId(replyID);

		mav.setViewName("redirect:/Forumreplylist");

		return mav;
	}
}
