package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ForumpostRepository;
import com.eeit40.springbootproject.model.ForumPost;

@Service
public class ForumPostService {

	@Autowired
	private ForumpostRepository forumpostDao;

	public void insertPost(ForumPost post) {
		forumpostDao.save(post);
	}

	public ForumPost getpostById(Integer postid) {
		Optional<ForumPost> option = forumpostDao.findById(postid);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}

	public void deleteBypostId(Integer postid) {
		forumpostDao.deleteById(postid);
	}

	public List<ForumPost> findAllpost() {
		return forumpostDao.findAll();
	}

	public ForumPost getLastpost() {
		return forumpostDao.findFirstByOrderByDateDesc();
	}
	
}
