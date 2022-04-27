package com.eeit40.springbootproject.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

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
	
	@GET
	public ShopInventory findPostById(@PathVariable Integer postid) {
		
	}
}
