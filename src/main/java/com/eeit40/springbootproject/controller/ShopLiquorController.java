package com.eeit40.springbootproject.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ShopLiquorRepository;
import com.eeit40.springbootproject.model.ShopLiquor;

@RestController
public class ShopLiquorController {
	
	@Autowired
	private ShopLiquorRepository dao;
	
	@PostMapping(value= "/ShopLiquor/insert")
	public ShopLiquor insertPost(@RequestBody ShopLiquor liquor) {
		ShopLiquor resLiquor = dao.save(liquor);
		
		return resLiquor;
	}
	
	
//	@ResponseBody
	@GetMapping(value = "/ShopLiquor/get/{postId}")
	public ModelAndView findPostById(ModelAndView mav, Integer postid) {
		
//		Optional<ShopLiquor> responsePost = dao.findById(postid);
//		
//		if(responsePost.isPresent()) {
//			return responsePost.get();
//		}
		mav.setViewName("ShopLiquor");
		return mav;
	}
	
	@GetMapping(value = "/ShopLiquor/get")
	public ShopLiquor findPostById2(@RequestParam Integer postid) {
		
		Optional<ShopLiquor> responsePost = dao.findById(postid);
		
		if(responsePost.isPresent()) {
			return responsePost.get();
		}
		
		return null;
	}
	
	@GetMapping(value = "/ShopLiquor/page/{pageNumber}")
	public List<ShopLiquor> findByPage(@PathVariable Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 2,Sort.Direction.DESC,"postID");
		Page<ShopLiquor> page = dao.findAll(pgb);
		List<ShopLiquor> list = page.getContent();
		return list;
		
	
	}
	
}