package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;


import com.eeit40.springbootproject.dao.ShopInventoryRepository;
import com.eeit40.springbootproject.model.ShopInventory;





@Service
public class ShopInventoryService {
	
	
	@Autowired
	private ShopInventoryRepository sidao;
	
	public void insert(ShopInventory inventory) {
		sidao.save(inventory);
	}
	
	public ShopInventory findByinventoryId(Integer inventory) {
		Optional<ShopInventory> option = sidao.findById(inventory);
		
		if(option.isPresent()) {
			return option.get();
		}
		return null;
	}
	
	public void deleteByinventoryId(Integer inventory) {
		sidao.deleteById(inventory);
	}
	
	public List<ShopInventory> findAllinventoryId(){
		return sidao.findAll();
	}
	
	public Page<ShopInventory> findByPage(Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 10,Sort.Direction.ASC,"CartId");
	
		Page<ShopInventory> page = sidao.findAll(pgb);
		
		return page;
	}
}
