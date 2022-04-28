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

import com.eeit40.springbootproject.model.Forumreport;

import com.eeit40.springbootproject.service.ForumreportService;

@Controller
public class ForumreportController {

	@Autowired
	private ForumreportService reportService;

	@GetMapping("/ForumAddreport")
	public ModelAndView AddForumreport(ModelAndView mav) {
		Forumreport report = new Forumreport();
		mav.getModel().put("forumreport", report);

		return mav;
	}

	@GetMapping("/Forumreportlist")
	public ModelAndView Forumreportlistpage(ModelAndView mav) {

		Forumreport lastreport = reportService.getLastreport();
		mav.getModel().put("lastreport", lastreport);

		List<Forumreport> allreport = reportService.findAllreport();
		mav.getModel().put("allreport", allreport);
		mav.setViewName("Forumreportlist");

		return mav;
	}

	@PostMapping(value = { "/ForumAddreport", "/Forumreportlist" })
	public ModelAndView insertreport(ModelAndView mav, @Valid @ModelAttribute(name = "forumreport") Forumreport report,
			BindingResult br) {

		mav.setViewName("ForumAddreport");

		if (!br.hasErrors()) {
			reportService.insertReport(report);
			Forumreport newreport = new Forumreport();
			mav.getModel().put("forumreport", newreport);
			mav.setViewName("redirect:/Forumreportlist");
		}

		Forumreport latestreport = reportService.getLastreport();

		mav.getModel().put("lastreport", latestreport);

		return mav;
	}

	@GetMapping("/ForumDeletereport")
	public ModelAndView deletereport(ModelAndView mav, @RequestParam(name = "reportID") Integer reportID) {
		reportService.deleteByreportId(reportID);

		mav.setViewName("redirect:/Forumreportlist");

		return mav;
	}
}
