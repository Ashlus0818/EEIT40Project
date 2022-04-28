package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ShopLiquorRepository;
import com.eeit40.springbootproject.model.ShopCart;
import com.eeit40.springbootproject.model.ShopLiquor;

@Service
public class ShopLiquorService {

	@Autowired
	private ShopLiquorRepository dao;
	
	//增
	public void insertLiquor(ShopLiquor liquor) {
		dao.save(liquor);
	}
	
	//查
	public ShopLiquor getCartById(Integer liquor) {
		Optional<ShopLiquor> option = dao.findById(liquor);

		if (option.isPresent()) {

			return option.get();
		}
		return null;
	}
	
	//刪
	public void deleteByCartId(Integer liquorid) {
		dao.deleteById(liquorid);
	}
	
	//查(全)
	public List<ShopLiquor> findAllCart() {
		return dao.findAll();
	}
	
	public Page<ShopLiquor> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 3, Sort.DEFAULT_DIRECTION.DESC, "liquorid");
		
		Page<ShopLiquor> page = dao.findAll(pgb);
		
		return page;
	}

}
