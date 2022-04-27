package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ForumpostRepository;
import com.eeit40.springbootproject.model.Forumpost;

@Service
public class ForumpostService {

	@Autowired
	private ForumpostRepository forumpostDao;

	public void insertPost(Forumpost post) {
		forumpostDao.save(post);
	}

	public Forumpost getpostById(Integer postid) {
		Optional<Forumpost> option = forumpostDao.findById(postid);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}

	public void deleteBypostId(Integer postid) {
		forumpostDao.deleteById(postid);
	}

	public List<Forumpost> findAllpost() {
		return forumpostDao.findAll();
	}

	public Forumpost getLastpost() {
		return forumpostDao.findFirstByOrderByDateDesc();
	}

}
