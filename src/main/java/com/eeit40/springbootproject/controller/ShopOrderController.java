package com.eeit40.springbootproject.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ShopOrderRepository;
import com.eeit40.springbootproject.model.ShopOrder;
import com.eeit40.springbootproject.service.ShopOrderService;

@Controller
public class ShopOrderController {
	
	@Autowired
	private ShopOrderRepository dao;
	
	@Autowired
	private ShopOrderService soService;
	
	@PostMapping(value= "/ShopOrder/insert")
	public ShopOrder insertPost(@RequestBody ShopOrder order) {
		ShopOrder resOrder = dao.save(order);
		
		return resOrder;
	}
	

	@GetMapping(value = "/ShopOrder/findPostById")
	public ModelAndView findPostById(ModelAndView mav, Integer postid) {
				
		mav.setViewName("ShopOrder");
		
		return mav;
	}
	
	@GetMapping(value = "/ShopOrder/get")
	public ShopOrder findPostById2(@RequestParam Integer postid) {
		
		Optional<ShopOrder> responsePost = dao.findById(postid);
		
		if(responsePost.isPresent()) {
			return responsePost.get();
		}
		return null;
	}
	
	@GetMapping(value = "/ShopOrder/page/{pageNumber}")
	public List<ShopOrder> findByPage(@PathVariable Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 2,Sort.Direction.DESC,"postID");
		Page<ShopOrder> page = dao.findAll(pgb);
		List<ShopOrder> list = page.getContent();
		return list;
	}
	
	@PostMapping(value = "ShopOrder/delete")
	public String deleteById(ModelAndView mav, @RequestParam("orderId") Integer Id) {
		System.out.println(Id);
		soService.deleteByOrderId(Id);
		System.out.println("finidsh");
		return "index";
	}
}
