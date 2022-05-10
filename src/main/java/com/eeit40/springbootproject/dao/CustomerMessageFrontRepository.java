package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eeit40.springbootproject.model.CustomerMessage;

public interface CustomerMessageFrontRepository extends JpaRepository<CustomerMessage, Integer> {

}
