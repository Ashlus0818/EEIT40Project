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
	private ShopCartRepository dao;

	public void insertCart(ShopCart cart) {
		dao.save(cart);
	}
	
	public ShopCart getCartById(Integer cart) {
		Optional<ShopCart> option = dao.findById(cart);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}
	
	public void deleteByCartId(Integer cartId) {
		dao.deleteById(cartId);
	}
	
	public List<ShopCart> findAllCart(){
		return dao.findAll();
	}
	
	public Page<ShopCart> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 3, Sort.DEFAULT_DIRECTION.DESC, "cartId");
		
		Page<ShopCart> page = dao.findAll(pgb);
		
		return page;
	}
	
	
	
}
