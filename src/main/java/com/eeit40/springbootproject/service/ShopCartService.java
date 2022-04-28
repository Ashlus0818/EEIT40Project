package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ShopCartRepository;
import com.eeit40.springbootproject.model.ShopCart;





@Service
public class ShopCartService {
	
	
	@Autowired
	private ShopCartRepository scdao;
	
	public void insert(ShopCart cart) {
		scdao.save(cart);
	}
	
	public ShopCart findByCartId(Integer cart) {
		Optional<ShopCart> option = scdao.findById(cart);
		
		if(option.isPresent()) {
			return option.get();
		}
		return null;
	}
	
	public void deleteByCartId(Integer cart) {
		scdao.deleteById(cart);
	}
	
	public List<ShopCart> findAllCart(){
		return scdao.findAll();
	}
	
	public Page<ShopCart> findByPage(Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 10,Sort.Direction.ASC,"CartId");
	
		Page<ShopCart> page = scdao.findAll(pgb);
		
		return page;
	}
}
