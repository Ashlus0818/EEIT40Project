package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ForumID;

@Repository
public interface ForumIDRepository extends JpaRepository<ForumID, Integer>{

}
