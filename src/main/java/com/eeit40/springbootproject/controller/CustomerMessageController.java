package com.eeit40.springbootproject.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.CustomerMessageRepository;
import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.service.CustomerMessageService;

@RestController
public class CustomerMessageController {
	
	@Autowired
	private CustomerMessageService customerMessageService;
	
	@Autowired
	private CustomerMessageRepository dao;
	
	@GetMapping("/backmessage/page/{pageNumber}")
	public List<CustomerMessage> findByPage(@PathVariable Integer pageNumber)
	{
		System.out.print(pageNumber);
		Pageable pgb = PageRequest.of(pageNumber-1, 2,Sort.Direction.DESC,"postID");
		Page<CustomerMessage> page = dao.findAll(pgb);
		List<CustomerMessage> list = page.getContent();
		return list;		
	}
	
	@PostMapping(value="backmessage/insert")
	public CustomerMessage insertCustomerMessages() {
		CustomerMessage mes = new CustomerMessage( "Tom", "qwe@gmail.com", "Hi","Hi");
		CustomerMessage reMes= dao.save(mes);
		return reMes;
	}

	@PostMapping(value="backmessage/insert2")
	public CustomerMessage insertCustomerMessages2(String messageName, String messageEmail, String messageQuest, String messagetext) {
		CustomerMessage mes = new CustomerMessage(messageName, messageEmail, messageQuest, messagetext);
		CustomerMessage reMes= dao.save(mes);
		return reMes;
	}

	@PostMapping(value = "backmessage/delete")
	public String deleteBymessageID(@RequestParam("num") Integer messageId) {
		dao.deleteById(messageId);
		return "redirect/backmessage";
		
	}
	
//	@GetMapping(value="/")
//	public ModelAndView AddCustomerMessage (ModelAndView mav) {
//		CustomerMessage cMes = new CustomerMessage();
//	}
}
