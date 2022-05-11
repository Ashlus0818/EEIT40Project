package com.eeit40.springbootproject.controller.front;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.BackTaskes;
import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.service.CusMesFrontService;

@Controller
public class CusMesFrontController {
	
	@Autowired
	private CusMesFrontService cusmess;
	
	@GetMapping("CusMesfronts/deletemes")
	public ModelAndView deleteMes(ModelAndView mav, @RequestParam(name = "messageId") Integer messageId) {
		cusmess.deleteBymesId(messageId);
		mav.setViewName("redirect:/front/CusMesFrontView");
		return mav;
	}
	
	@PostMapping("CusMesfronts/delete")
	public String deleteById(ModelAndView mav, @RequestParam("num") Integer id) {
		boolean flag = cusmess.deleteById1(id);
		System.out.print(id);
		return "redirect:/front/CusMesFrontView";
	}
	
	@PostMapping(value="CusMesfronts/update")
	public String updateById(ModelAndView mav, @RequestParam("messageId") Integer messageId, @RequestParam("messageName") String messageName, 
			@RequestParam("messageEmail") String messageEmail, @RequestParam("messageQuest") String messageQuest, @RequestParam("messagetext") String messagetext) {
		cusmess.insert(new CustomerMessage(messageId, messageName, messageEmail, messageQuest,messagetext,new Date()));
		return "redirect:/message/CusMesFrontView";
	}
}
