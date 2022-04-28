package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ShopOrderRepository;
import com.eeit40.springbootproject.model.ShopLiquor;
import com.eeit40.springbootproject.model.ShopOrder;

@Service
public class ShopOrderService {
	
	@Autowired
	private  ShopOrderRepository dao;
	
	public void InsertOrder(ShopOrder order) {
		dao.save(order);
	}
	
	public ShopOrder getOrderById(Integer order) {
		Optional<ShopOrder> option = dao.findById(order);
		
		if(option.isPresent()) {
			return option.get();
		}
		return null;
	}
	
	public void deleteByOrderId(Integer OrderId) {
		dao.deleteById(OrderId);
	}
	
	public List<ShopOrder> findAllCart(){
		return dao.findAll();
	}
	
	public ShopOrder getLastPost() {
		return dao.findFirstByOrderByAddedDesc();
	}
	
	public Page<ShopOrder> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 3, Sort.DEFAULT_DIRECTION.ASC, "OrderId");
		
		Page<ShopOrder> page = dao.findAll(pgb);
		
		return page;
	}
}
