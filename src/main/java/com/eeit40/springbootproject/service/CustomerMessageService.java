package com.eeit40.springbootproject.service;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.CustomerMessageBackMailRepository;
import com.eeit40.springbootproject.dao.CustomerMessageRepository;
import com.eeit40.springbootproject.model.BackTaskes;
import com.eeit40.springbootproject.model.CusMesBackMail;
import com.eeit40.springbootproject.model.CustomerMessage;





@Service
public class CustomerMessageService {
	
	@Autowired
	private CustomerMessageBackMailRepository cmailmdao;
	
	@Autowired
	private CustomerMessageRepository cmdao;
	//===============================================================
	
	public void insert(CustomerMessage messages) {
			cmdao.save(messages);
	}
	public void insertmail(CusMesBackMail mailmessage) {
		cmailmdao.save( mailmessage);
}
	
	public CustomerMessage findBymessagesId(Integer messageId) {
		Optional<CustomerMessage> option = cmdao.findById(messageId);
		
		if(option.isPresent()) {
			return option.get();
		}
		
		return null;
	}
	
	public void deleteBymesId(Integer messageId) {
		cmdao.deleteById(messageId);
	}
	
	public List<CustomerMessage> findAllMessages(){
		return cmdao.findAll();
	}
	
	public Page<CustomerMessage> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 20, Sort.Direction.DESC, "messageId");
		
		Page<CustomerMessage> page = cmdao.findAll(pgb);
		
		return page;
	}
	
	public CustomerMessage getLastmes() {
		return cmdao.findFirstByOrderByDateDesc();
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
	public int find1(){
		return cmdao.find1("????????????").size();
	};
	public int find2(){
		return cmdao.find1("????????????").size();
	};
	public int find3(){
		return cmdao.find1("????????????").size();
	};
}
