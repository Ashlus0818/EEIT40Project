package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ForumPost;

@Repository
public interface ForumpostRepository extends JpaRepository<ForumPost, Integer> {
	public ForumPost findFirstByOrderByDateDesc();

}
