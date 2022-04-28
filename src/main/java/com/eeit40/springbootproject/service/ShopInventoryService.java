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
import com.eeit40.springbootproject.model.ShopCart;
import com.eeit40.springbootproject.model.ShopInventory;

@Service
public class ShopInventoryService {

	@Autowired
	private ShopInventoryRepository dao;

	public void insertInventory(ShopInventory inventory) {
		dao.save(inventory);
	}

	public ShopInventory getInventoryById(Integer inventoryid) {
		Optional<ShopInventory> option = dao.findById(inventoryid);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}

	public void deleteByInventoryId(Integer inventoryid) {
		dao.deleteById(inventoryid);
	}

	public List<ShopInventory> findAllinventory() {
		return dao.findAll();
	}
	
	public Page<ShopInventory> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 3, Sort.DEFAULT_DIRECTION.DESC, "inventoryid");
		
		Page<ShopInventory> page = dao.findAll(pgb);
		
		return page;
	}
}
