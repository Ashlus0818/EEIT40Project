package com.eeit40.springbootproject.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.CustomerMessageFrontRepository;
import com.eeit40.springbootproject.dao.CustomerMessageRepository;
import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.model.ReservationOrder;

@Service
public class CusMesFrontService {
	
	@Autowired
	private CustomerMessageRepository cmdao;
	
	@Autowired
	private CustomerMessageFrontRepository dao;
	
	public Page<CustomerMessage> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 5, Sort.Direction.DESC, "messageId");
		
		Page<CustomerMessage> page = dao.findAll(pgb);
		
		return page;
	}
	
	public void deleteBymesId(Integer messageId) {
		dao.deleteById(messageId);
	}
	
	public boolean deleteById1(Integer messageId) {
		Optional<CustomerMessage> option = cmdao.findById(messageId);
		if(option.isPresent()) {
			cmdao.deleteById(messageId);
			return true;
		}else {
			return false;
		}
}
	
	
	public void insert(CustomerMessage messages) {
		dao.save(messages);
}
}