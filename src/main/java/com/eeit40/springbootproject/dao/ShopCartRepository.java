package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eeit40.springbootproject.model.ShopLiquor;

public interface ShopCartRepository  extends JpaRepository<ShopLiquor, Integer>{
	
//	public shopCart findFirstByOrderByAddedDesc();
	
}
