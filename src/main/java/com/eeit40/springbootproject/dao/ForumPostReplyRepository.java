package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ForumPostReply;
import com.eeit40.springbootproject.model.ForumReply;
import com.eeit40.springbootproject.model.ForumReport;

@Repository
public interface ForumPostReplyRepository extends JpaRepository<ForumPostReply, Integer> {

}
