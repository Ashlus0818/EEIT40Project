package com.eeit40.springbootproject.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.ForumPost;
import com.eeit40.springbootproject.model.ForumReport;
import com.eeit40.springbootproject.service.ForumPostService;
import com.eeit40.springbootproject.service.ForumReportService;

@Controller
public class ForumFrontReportController {
	@Autowired
	private ForumReportService reportService;
	@Autowired
	private ForumPostService postService;	
	@GetMapping("/ForumFrontReportlist")
	public ModelAndView ForumReportlistpage(ModelAndView mav) {		
		ForumReport lastreport = reportService.getLastreport();
		mav.getModel().put("lastreport", lastreport);
		List<ForumReport> allreport = reportService.findAllreport();
		mav.getModel().put("allreport", allreport);
		mav.setViewName("FrontJsp/ForumFrontReportlist");
		return mav;
	}
	@GetMapping("/ForumFrontAddreport")
	public ModelAndView AddForumreport(ModelAndView mav, @RequestParam(name = "postID") Integer postID) {
		ForumReport report = new ForumReport();
		report.setPostID(postID);
		ForumPost post = new ForumPost();
		post = postService.getpostById(postID);
		mav.getModel().put("post", post);
		mav.getModel().put("forumReport", report);
		mav.setViewName("FrontJsp/ForumFrontAddreport");
		return mav;
	}	
	@PostMapping("/ForumFrontAddreport")
	public ModelAndView insertreport(ModelAndView mav, @Valid @ModelAttribute(name = "forumreport") ForumReport report,
			BindingResult br) {
		mav.setViewName("FrontJsp/ForumFrontAddreport");

		if (!br.hasErrors()) {
			reportService.insertReport(report);
			ForumReport newreport = new ForumReport();
			mav.getModel().put("forumpost", newreport);
			mav.setViewName("redirect:/ForumFrontPostlist");
		}
		return mav;
	}

}
