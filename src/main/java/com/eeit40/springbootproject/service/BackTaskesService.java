package com.eeit40.springbootproject.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.BackTaskesRepository;
import com.eeit40.springbootproject.model.BackTaskes;

@Service
public class BackTaskesService {
	
	@Autowired
	private BackTaskesRepository backTaskesDao;
	
	public void insert(BackTaskes task) {
		backTaskesDao.save(task);
	}
	
	public BackTaskes findById(Integer id) {
		Optional<BackTaskes> option = backTaskesDao.findById(id);
		if(option.isPresent()) {
			return option.get();
		};
		
		return null;
	}
	
	public void deleteById(Integer id) {
		backTaskesDao.deleteById(id);
	}
}
