package com.eeit40.springbootproject.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.BackTaskesRepository;
import com.eeit40.springbootproject.model.BackTaskes;

@Service
public class BackTaskesService {
	
	@Autowired
	private BackTaskesRepository backTaskesDao;
	
	public BackTaskes insert(BackTaskes task) {
		return backTaskesDao.save(task);
	}
	
	public BackTaskes findById(Integer id) {
		Optional<BackTaskes> option = backTaskesDao.findById(id);
		if(option.isPresent()) {
			return option.get();
		};
		
		return null;
	}
	
	public Page<BackTaskes> findByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 10, Sort.Direction.DESC, "id");
		
		Page<BackTaskes> page = backTaskesDao.findAll(pgb);
		
		return page;
	}
	
	public boolean deleteById(Integer id) {
		Optional<BackTaskes> option = backTaskesDao.findById(id);
		if(option.isPresent()) {
			backTaskesDao.deleteById(id);
			return true;
		}else {
			return false;
		}
		
		
	}
}
