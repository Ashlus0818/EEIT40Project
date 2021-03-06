package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import com.eeit40.springbootproject.dao.ShopLiquorRepository;
import com.eeit40.springbootproject.dao.ShopOrderRepository;
import com.eeit40.springbootproject.model.BackTaskes;
import com.eeit40.springbootproject.model.ShopLiquor;
import com.eeit40.springbootproject.model.ShopOrder;




@Service
public class ShopOrderService {
	
	
	@Autowired
	private ShopOrderRepository sodao;
	
	public void insert(ShopOrder order) {
		sodao.save(order);
	}
	
	public ShopOrder findByOrderId(Integer orderId) {
		Optional<ShopOrder> option = sodao.findById(orderId);
		
		if(option.isPresent()) {
			return option.get();
		}
		return null;
	}
	

	
	public boolean deleteByOrderId(Integer id) {
		System.out.println(id+"outside the loop");
		Optional<ShopOrder> option = sodao.findById(id);
		if(option.isPresent()) {
			System.out.println(id+"in the loop");
			sodao.deleteById(id);
			return true;
		}else {
			return false;
		}
	}
	
	
	public List<ShopOrder> findAllLiquor(){
		return sodao.findAll();
	}
	
	public Page<ShopOrder> findByPage(Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 10,Sort.Direction.ASC,"orderId");
	
		Page<ShopOrder> page = sodao.findAll(pgb);
		
		return page;
	}
}
