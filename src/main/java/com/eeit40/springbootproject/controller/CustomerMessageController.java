package com.eeit40.springbootproject.controller;


import java.util.List;
//import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;


import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.service.CustomerMessageService;

@Controller
public class CustomerMessageController {
	
	@Autowired
	private CustomerMessageService cmseService;
	
	@GetMapping("/CusMesbacks/findByPage")
	public ModelAndView findByPage(ModelAndView mav,@RequestParam(name="p", defaultValue = "1") Integer pageNumber)
	{
		System.out.print(pageNumber);
		Page<CustomerMessage> list = cmseService.findByPage(pageNumber);
		mav.getModel().put("list",list );
		mav.setViewName("CusMesback");
		System.out.println(list);
		return mav;
	
	}
	
//================================================================	
	@GetMapping("/message/AddCusMessage")
	public ModelAndView AddCustomerMessage(ModelAndView mav) {
		CustomerMessage cusm = new CustomerMessage();
		mav.getModel().put("cusmes", cusm);

		
		return mav;
	}
	
	
	@PostMapping("/message/addCusMessage")
	public ModelAndView AddCusMessage(ModelAndView mav,@Valid @ModelAttribute(name="CustomerMessages") CustomerMessage cusmes , BindingResult br) {
		mav.setViewName("AddCusMessage");
		if (!br.hasErrors()) {
			cmseService.insert(cusmes);
			CustomerMessage cMes = new CustomerMessage();
			mav.getModel().put("CusMes", cMes);
			mav.setViewName("redirect:/front/CusMesFrontView");
		}
		CustomerMessage lastMes = cmseService.getLastmes();
		mav.getModel().put("lastmes", lastMes);
		System.out.print(cusmes+",");
		return mav;
	}
//=================================================================
	@GetMapping("/EditCustomerMessage")
	public String editMessage(Model model, @RequestParam(name = "messageId") Integer messageId) {
		CustomerMessage cMes = cmseService.findBymessagesId(messageId);
		model.addAttribute("CusMesback", cMes);

		return "EditCustomerMessage";
	}
	
	@PostMapping("/EditCustomerMessage")
	public ModelAndView editMessage(ModelAndView mav, @Valid @ModelAttribute(name = "CustomerMessage") CustomerMessage cusmes,
			BindingResult br) {

		mav.setViewName("EditCustomerMessage");

		if (!br.hasErrors()) {
			cmseService.insert(cusmes);
			mav.setViewName("redirect:/CusMesFrontView");
		}

		return mav;

	}
//====================================================================	
	@GetMapping("CusMesbacks/DeleteMessage")
	public String deleteMessage(ModelAndView mav, @RequestParam(name = "messageId") Integer messageId) {
		
		cmseService.deleteBymesId(messageId);

		//mav.setViewName("redirect:/CusMesbacks/findByPage");

		return "redirect:/CusMesbacks/findByPage";
	}
	@GetMapping("/DeleteMesssage")
	public ModelAndView deleteMes(ModelAndView mav, @RequestParam(name = "messageId") Integer messageId) {
		cmseService.deleteBymesId(messageId);
		mav.setViewName("redirect:/CusMesFrontView");
		return mav;
	}
	
	@PostMapping("CusMesbacks/delete")
	public String deleteById(ModelAndView mav, @RequestParam("num") Integer id) {
		boolean flag = cmseService.deleteById1(id);
		System.out.print(id);
		return "redirect:/CusMesback";
	}
	

}
