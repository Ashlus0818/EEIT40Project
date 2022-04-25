package com.eeit40.springbootproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ReservationStoreRepository;
import com.eeit40.springbootproject.model.ReservationStore;


@Service
public class ReservationStoreService {

	@Autowired
	private ReservationStoreRepository ReservationStoreDao;
	
	public Page<ReservationStore> findByPage(Integer pageNumber){
	Pageable pgb = PageRequest.of(pageNumber - 1,10, Sort.Direction.ASC, "storeId");
	Page<ReservationStore> page = ReservationStoreDao.findAll(pgb);
	//List<ReservationStore> list = page.getContent();
	
	return page;
	
	
	}
	
	
}
