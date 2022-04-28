package com.eeit40.springbootproject.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ShopCartRepository;
import com.eeit40.springbootproject.model.ShopCart;
import com.eeit40.springbootproject.service.ShopCartService;



@RestController
public class ShopCartCorntroller {
	@Autowired
	private ShopCartRepository dao;
	
	
	private ShopCartService scService;
	
	
	//新增
	@PostMapping(value="/ShopCart/insert")
	public ModelAndView insertPost(ModelAndView mav, @Valid @ModelAttribute(name = "shopCart") ShopCart cart,BindingResult br ) {
		mav.setViewName("ShopCart");
		
		if(!br.hasErrors()) {
			scService.insertCart(cart);
			ShopCart sc = new ShopCart();
			mav.getModel().put("shopWork", sc);
			mav.setViewName("redirect:/ShopCart");
		}
		
		return mav;
	}
	
	@GetMapping(value = "/ShopCart/findPostById")
	public ModelAndView findPostById(ModelAndView mav, Integer postid) {

		mav.setViewName("ShopCart");

		return mav;
	}
	
	
	
	@GetMapping(value = "/ShopCart/page")
	public ModelAndView findByPage(ModelAndView mav,@RequestParam(name = "s") Integer pageNumber) {
		
		Page<ShopCart> list = scService.findByPage(pageNumber);
		mav.getModel().put("list", list);
		mav.setViewName("ShopCart");
		return mav;
	}
	
	//刪除
	@GetMapping("/DeleteCartId")
	public ModelAndView deleteCart(ModelAndView mav, @RequestParam(name = "Cartid") Integer cartId) {
		scService.deleteByCartId(cartId);

		mav.setViewName("redirect:/ShopCart");

		return mav;
	}
	
}
