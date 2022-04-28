package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.Forumreply;

@Repository
public interface ForumreplyRepository extends JpaRepository<Forumreply, Integer> {
	public Forumreply findFirstByOrderByDateDesc();
}
