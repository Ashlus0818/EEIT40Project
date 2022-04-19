package com.eeit40.springbootproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller

@RequestMapping("/cart")
public class ShopCartCorntroller {

	
	
	 @GetMapping("/cart")
	    public String cartPage() {
	        return "cart";
	    }

	
}
