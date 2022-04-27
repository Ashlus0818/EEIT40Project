package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.Forumreport;

@Repository
public interface ForumreportRepository extends JpaRepository<Forumreport, Integer>{
	public Forumreport findFirstByOrderByDateDesc();
}
