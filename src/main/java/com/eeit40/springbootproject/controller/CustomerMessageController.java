package com.eeit40.springbootproject.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.CustomerMessageRepository;
import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.service.CustomerMessageService;

@RestController
public class CustomerMessageController {
	
	@Autowired
	private CustomerMessageService cmseService;
	
	@Autowired
	private CustomerMessageRepository dao;
	
	@GetMapping("/CusMesback/findByPage")
	public ModelAndView findByPage(ModelAndView mav,@RequestParam(name="p", defaultValue = "1") Integer pageNumber)
	{
		System.out.print(pageNumber);
		Page<CustomerMessage> list = cmseService.findByPage(pageNumber);
		mav.getModel().put("list",list );
		mav.setViewName("CusMesback");
		System.out.println(list);
		return mav;
	
	}
	
	@RequestMapping(value = "/CusMesback/{messageId}",method=RequestMethod.DELETE)
	public String deleteBymessageID(@PathVariable("messageId") Integer messageId) {
		dao.deleteById(messageId);
		return "redirect:/CusMesback";
		
	}

//================================================================
	@GetMapping(value="/AddCusMessage")
	public ModelAndView AddCustomerMessage (ModelAndView mav) {
		CustomerMessage cMes = new CustomerMessage();
		mav.getModel().put("backmessage", cMes);
		return mav;
	}
	
	@PostMapping(value = "/AddCusMessage")
	public ModelAndView insertMessage(ModelAndView mav,@Valid @ModelAttribute(name="CustomerMessage") CustomerMessage cusmes,
			BindingResult br) {
		mav.setViewName("AddCusMessage");
		
		if (!br.hasErrors()) {
			cmseService.insert(cusmes);
			CustomerMessage cMes = new CustomerMessage();
			mav.getModel().put("workMessages", cMes);
			mav.setViewName("redirect:/CusMesback");
		}
		return mav;
	}
	
	@GetMapping("/EditCustomerMessage")
	public String editMessage(Model model, @RequestParam(name = "messageId") Integer messageId) {
		CustomerMessage cMes = cmseService.findBymessagesId(messageId);
		model.addAttribute("CusMesback", cMes);

		return "EditForumpost";
	}
	
	@PostMapping("/EditCustomerMessage")
	public ModelAndView editMessage(ModelAndView mav, @Valid @ModelAttribute(name = "CustomerMessage") CustomerMessage cusmes,
			BindingResult br) {

		mav.setViewName("EditCustomerMessage");

		if (!br.hasErrors()) {
			cmseService.insert(cusmes);
			mav.setViewName("redirect:/CusMesback");
		}

		return mav;

	}
	
	@GetMapping("/DeleteCusMessage")
	public ModelAndView deleteMessage(ModelAndView mav, @RequestParam(name = "messageId") Integer messageId) {
		cmseService.deleteBymessagesId(messageId);

		mav.setViewName("redirect:/backmessage");

		return mav;
	}
	
	

}
