package com.eeit40.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.eeit40.springbootproject.dao.ForumreplyRepository;
import com.eeit40.springbootproject.model.ForumReply;

@Service
public class ForumReplyService {


	@Autowired
	private ForumreplyRepository forumreplyDao;

	public void insertReply(ForumReply reply) {
		forumreplyDao.save(reply);
	}

	public ForumReply getreplyById(Integer replyID) {

		Optional<ForumReply> option = forumreplyDao.findById(replyID);
		if (option.isPresent()) {
			return option.get();
		}
		return null;
	}

	public void deleteByreplyId(Integer replyID) {
		forumreplyDao.deleteById(replyID);
	}

	public List<ForumReply> findAllreply() {
		return forumreplyDao.findAll();
	}
	
	public ForumReply getLastreply() {
		return forumreplyDao.findFirstByOrderByDateDesc();
	}	
	
	public List<ForumReply> getreplyBypostID(Integer postID) {
		List<ForumReply> list1 = forumreplyDao.findAllByPostID(postID);
		return list1;
	}
	
}
