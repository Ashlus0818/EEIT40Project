package com.eeit40.springbootproject.dao;


import org.springframework.data.jpa.repository.JpaRepository;

import com.eeit40.springbootproject.model.CustomerMessage;


public interface CustomerMessageRepository extends JpaRepository<CustomerMessage, Integer> {
	public CustomerMessage findFirstByOrderByDateDesc();
}
