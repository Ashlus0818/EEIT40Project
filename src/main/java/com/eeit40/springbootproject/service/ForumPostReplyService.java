package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ForumPostReplyRepository;

import com.eeit40.springbootproject.model.ForumPostReply;


@Service
public class ForumPostReplyService {

	@Autowired
	private ForumPostReplyRepository forumpostreplyDao;

	public List<ForumPostReply> findAllreply() {
		return forumpostreplyDao.findAll();
	}
	
	public void insertReply(ForumPostReply reply) {
		forumpostreplyDao.save(reply);
	}

	public ForumPostReply getreplyById(Integer reply) {
		Optional<ForumPostReply> option = forumpostreplyDao.findById(reply);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}
	
	
}
