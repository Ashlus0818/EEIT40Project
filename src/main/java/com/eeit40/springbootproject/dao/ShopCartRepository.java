package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ShopCart;

@Repository
public interface ShopCartRepository  extends JpaRepository<ShopCart, Integer>{
	
//	public shopCart findFirstByOrderByAddedDesc();
	
}
