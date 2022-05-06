package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;





import com.eeit40.springbootproject.dao.ShopLiquorRepository;

import com.eeit40.springbootproject.model.ShopLiquor;




@Service
public class ShopLiquorService {
	
	
	@Autowired
	private ShopLiquorRepository sldao;
	
	public void insert(ShopLiquor liquor) {
		sldao.save(liquor);
	}
	
	public ShopLiquor findByliquorId(Integer liquorId) {
		Optional<ShopLiquor> option = sldao.findById(liquorId);
		
		if(option.isPresent()) {
			return option.get();
		}
		return null;
	}
	
	public void deleteByliquorId(Integer liquorId) {
		sldao.deleteById(liquorId);
	}
	
	public List<ShopLiquor> findAllLiquor(){
		return sldao.findAll();
	}
	
	public Page<ShopLiquor> findByPage(Integer pageNumber){
		
		Pageable pgb = PageRequest.of(pageNumber-1, 10,Sort.Direction.ASC,"id");
	
		Page<ShopLiquor> page = sldao.findAll(pgb);
		
		return page;
	}
}
