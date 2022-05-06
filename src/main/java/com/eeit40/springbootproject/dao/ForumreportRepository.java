package com.eeit40.springbootproject.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ForumReply;
import com.eeit40.springbootproject.model.ForumReport;

@Repository
public interface ForumreportRepository extends JpaRepository<ForumReport, Integer>{
	public ForumReport findFirstByOrderByDateDesc();
	public List<ForumReport> findAllByPostID(Integer postID);

}
