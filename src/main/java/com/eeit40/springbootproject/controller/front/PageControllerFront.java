package com.eeit40.springbootproject.controller.front;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageControllerFront {

	@GetMapping("/front")
	public String front() {
		return "FrontJsp/index";
	}
	
	@GetMapping("/front/Blog-details-fullwidth")
	public String blogDetailsFullwidth() {
		return "FrontJsp/Blog-details-fullwidth";
	}
	
	@GetMapping("/front/Coming-soon")
	public String comingSoon() {
		return "FrontJsp/Coming-soon";
	}
	
	@GetMapping("/front/CusMesFront")
	public String cusMesFront() {
		return "FrontJsp/CusMesFront";
	}
	
	@GetMapping("/front/Event")
	public String event() {
		return "FrontJsp/Event";
	}
	
	@GetMapping("/front/Reservation")
	public String reservation() {
		return "FrontJsp/Reservation";
	}

	@GetMapping("/front/Shop-cart")
	public String shopCart() {
		return "FrontJsp/Shop-cart";
	}
	
	@GetMapping("/front/Shop-details")
	public String shopdetails() {
		return "FrontJsp/Shop-details";
	}
	
	@GetMapping("/front/Shop-fullwidth-grid")
	public String shopFullWidthGrid() {
		return "FrontJsp/Shop-fullwidth-grid";
	}

	
	@GetMapping("/front/Shop-order-tracking")
	public String shopOrderTracking() {
		return "FrontJsp/Shop-order-tracking";
	}
	
	

	
	
}
