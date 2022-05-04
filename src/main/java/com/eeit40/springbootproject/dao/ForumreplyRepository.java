package com.eeit40.springbootproject.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ForumReply;

@Repository
public interface ForumreplyRepository extends JpaRepository<ForumReply, Integer> {
	public ForumReply findFirstByOrderByDateDesc();
	public List<ForumReply> findAllByPostID(Integer postID);

}
