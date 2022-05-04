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
	@GetMapping("/CusMesbacks/AddCusMessage")
	public ModelAndView AddCustomerMessage(ModelAndView mav) {
		CustomerMessage cusm = new CustomerMessage();
		mav.getModel().put("cusmes", cusm);

		return mav;
	}
	
	@GetMapping("/CusMesbacks/CusMeslist")
	public ModelAndView CusMeslistpage(ModelAndView mav) {

		CustomerMessage lastmes = cmseService.getLastmes();
		mav.getModel().put("lastmes", lastmes);

		List<CustomerMessage> cm = cmseService.findAllMessages();
		mav.getModel().put("allmes", cm);
		mav.setViewName("CusMesAdd");

		return mav;
	}
	
	@PostMapping(value={"/AddCusMessage","/CusMeslist"})
	public ModelAndView insertMessage(ModelAndView mav,@Valid @ModelAttribute(name="CustomerMessages") CustomerMessage cusmes,
			BindingResult br) {
		mav.setViewName("AddCusMessage");
		
		if (!br.hasErrors()) {
			cmseService.insert(cusmes);
			CustomerMessage cMes = new CustomerMessage();
			mav.getModel().put("CusMes", cMes);
			mav.setViewName("redirect:/CusMesAdd");
		}
		CustomerMessage lastmes = cmseService.getLastmes();

		mav.getModel().put("lastmes", lastmes);

		return mav;
	}
	
	@GetMapping("/CusMesbacks/EditCustomerMessage")
	public String editMessage(Model model, @RequestParam(name = "messageId") Integer messageId) {
		CustomerMessage cMes = cmseService.findBymessagesId(messageId);
		model.addAttribute("CusMesback", cMes);

		return "EditCustomerMessage";
	}
	
	@PostMapping("/CusMesbacks/EditCustomerMessage")
	public ModelAndView editMessage(ModelAndView mav, @Valid @ModelAttribute(name = "CustomerMessage") CustomerMessage cusmes,
			BindingResult br) {

		mav.setViewName("EditCustomerMessage");

		if (!br.hasErrors()) {
			cmseService.insert(cusmes);
			mav.setViewName("redirect:/CusMeslist");
		}

		return mav;

	}
	
	@GetMapping("CusMesbacks/DeleteMessage")
	public String deleteMessage(ModelAndView mav, @RequestParam(name = "messageId") Integer messageId) {
		System.out.print(messageId+",");
		cmseService.deleteBymesId(messageId);

		//mav.setViewName("redirect:/CusMesbacks/findByPage");

		return "redirect:/CusMesbacks/findByPage";
	}
	
	@PostMapping("CusMesbacks/delete")
	public String deleteById(ModelAndView mav, @RequestParam("num") Integer id) {
		boolean flag = cmseService.deleteById1(id);
		return "redirect:/CusMesback";
	}
	

}
