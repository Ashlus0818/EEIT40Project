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
import com.eeit40.springbootproject.model.ShopOrder;





@Service
public class ShopInventoryService {
	
	
	@Autowired
	private ShopInventoryRepository sidao;
	
	public ShopInventory insert(ShopInventory inventory) {
		return sidao.save(inventory);
	}
	
	public ShopInventory findByinventoryId(Integer inventory) {
		Optional<ShopInventory> option = sidao.findById(inventory);
		
		if(option.isPresent()) {
			return option.get();
		}
		return null;
	}
	

	
	public boolean deleteByinventoryId(Integer id) {
		System.out.println(id+"outside the loop");
		Optional<ShopInventory> option = sidao.findById(id);
		if(option.isPresent()) {
			System.out.println(id+"in the loop");
			sidao.deleteById(id);
			return true;
		}else {
			return false;
		}
	}
	
	public List<ShopInventory> findAllinventoryId(){
		return sidao.findAll();
	}
	
	public Page<ShopInventory> findByPage(Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 10,Sort.Direction.ASC,"id");
	
		Page<ShopInventory> page = sidao.findAll(pgb);
		
		return page;
	}
}
