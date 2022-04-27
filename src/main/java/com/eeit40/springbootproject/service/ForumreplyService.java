package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import com.eeit40.springbootproject.dao.ForumreplyRepository;

import com.eeit40.springbootproject.model.Forumreply;

@Service
public class ForumreplyService {

	@Autowired
	private ForumreplyRepository forumreplyDao;

	public void insertReply(Forumreply reply) {
		forumreplyDao.save(reply);
	}

	public Forumreply getreplyById(Integer reply) {
		Optional<Forumreply> option = forumreplyDao.findById(reply);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}

	public void deleteByreplyId(Integer replyid) {
		forumreplyDao.deleteById(replyid);
	}

	public List<Forumreply> findAllreply() {
		return forumreplyDao.findAll();
	}
	
	public Forumreply getLastreply() {
		return forumreplyDao.findFirstByOrderByDateDesc();
	}

}
