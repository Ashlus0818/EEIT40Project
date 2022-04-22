package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ForumpostRepository;
import com.eeit40.springbootproject.model.Forumpost;

@Service
public class ForumpostService {

	@Autowired
	private ForumpostRepository forumpostDao;

	public void insert(Forumpost post) {
		forumpostDao.save(post);
	}

	public Forumpost findById(Integer postid) {
		Optional<Forumpost> option = forumpostDao.findById(postid);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}

	public void deleteById(Integer postid) {
		forumpostDao.deleteById(postid);
	}

	public List<Forumpost> findAllpost() {
		return forumpostDao.findAll();
	}

	public Page<Forumpost> findByPage(Integer pageNumber) {
		Pageable pgb = PageRequest.of(pageNumber - 1, 3, Sort.Direction.DESC, "date");
		Page<Forumpost> page = forumpostDao.findAll(pgb);
		return page;
	}
	
	public Forumpost getLastpost() {
		return forumpostDao.findFirstByOrderByDateDesc();
	}

}
