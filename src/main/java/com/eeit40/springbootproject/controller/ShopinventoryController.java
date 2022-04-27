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

import com.eeit40.springbootproject.dao.ShopInventoryRepository;
import com.eeit40.springbootproject.model.ShopInventory;



@RestController
public class ShopinventoryController {
	
	@Autowired
	private ShopInventoryRepository dao;
	
	@PostMapping(value = "/ShopInventory/insert")
	public ShopInventory insertPost(@RequestBody ShopInventory inventory) {
		
		ShopInventory resInventory = dao.save(inventory);
		
		return resInventory;
	}
	
	@GetMapping(value = "/ShopInventory/findPostById")
	public ModelAndView findPostById(ModelAndView mav, Integer postid) {
		mav.setViewName("ShopInventory");
		
	return mav;
	
	}
	
	@GetMapping(value = "/ShopInventory/get")
	public ShopInventory findPostById2(@RequestParam Integer postid) {
		
		Optional<ShopInventory> responsePost = dao.findById(postid);
		
		if(responsePost.isPresent()) {
			return responsePost.get();
		}
		
		return null;
	}
	
	@GetMapping(value = "/ShopInventory/page/{pageNumber}")
	public List<ShopInventory> findByPage(@PathVariable Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 2,Sort.Direction.DESC,"postID");
		Page<ShopInventory> page = dao.findAll(pgb);
		List<ShopInventory> list = page.getContent();
		return list;
		
	}
	
}
