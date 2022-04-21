package com.eeit40.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.eeit40.springbootproject.service.CustomerMessageService;

@RestController
public class CustomerMessageController {
	
	@Autowired
	private CustomerMessageService customerMessageService;
	
	
}
