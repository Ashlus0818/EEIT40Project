package com.eeit40.springbootproject.model;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ShopCartRepository  extends JpaRepository<shopCart, Integer>{
	
//	public shopCart findFirstByOrderByAddedDesc();
	
}
