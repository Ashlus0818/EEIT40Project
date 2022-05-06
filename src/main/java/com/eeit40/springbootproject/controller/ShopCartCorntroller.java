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
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ShopCartRepository;
import com.eeit40.springbootproject.model.ShopCart;



@Controller
public class ShopCartCorntroller {
	@Autowired
	private ShopCartRepository dao;
	
	@PostMapping(value="/ShopCart/insert")
	public ShopCart insertPost(@RequestBody ShopCart cart) {
		ShopCart resCart = dao.save(cart);
		
		return resCart;
	}
	
//	@ResponseBody
	@GetMapping(value = "/ShopCart/findPostById")
	public ModelAndView findPostById(ModelAndView mav, Integer postid) {
//		Optional<ShopCart> responsePost = dao.findById(postid);
		
//		if(responsePost.isPresent()) {
//			return "ShopCart";
		mav.setViewName("ShopCart");
//		}
		return mav;
	}
	
	@GetMapping(value = "/ShopCart/get")
	public ShopCart findPostById2(@RequestParam Integer postid) {
		
		Optional<ShopCart> responsePost = dao.findById(postid);
		
		if(responsePost.isPresent()) {
			return responsePost.get();
		}
		
		return null;
	}
	
	@GetMapping(value = "/ShopCart/page/{pageNumber}")
	public List<ShopCart> findByPage(@PathVariable Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 2,Sort.Direction.DESC,"postID");
		Page<ShopCart> page = dao.findAll(pgb);
		List<ShopCart> list = page.getContent();
		return list;
		
	}
	
}
