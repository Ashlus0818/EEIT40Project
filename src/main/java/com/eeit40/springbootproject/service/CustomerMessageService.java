package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eeit40.springbootproject.dao.CustomerMessageMapper;
import com.eeit40.springbootproject.dao.CustomerMessageRepository;
import com.eeit40.springbootproject.model.CustomerMessage;




@Service
public class CustomerMessageService {
	
	
	@Autowired
	private CustomerMessageRepository cmdao;
	//===============================================================
	
	public void insert(CustomerMessage messages) {
			cmdao.save(messages);
	}
	
	public CustomerMessage findById(Integer id) {
		Optional<CustomerMessage> option = cmdao.findById(id);
		
		if(option.isPresent()) {
			return option.get();
		}
		
		return null;
	}
	
	public void deleteById(Integer id) {
		cmdao.deleteById(id);
	}
	
	public List<CustomerMessage> findAllMessages(){
		return cmdao.findAll();
	}
	
	public Page<CustomerMessage> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 3, Sort.Direction.DESC, "added");
		
		Page<CustomerMessage> page = cmdao.findAll(pgb);
		
		return page;
	}
	
	
	
}
