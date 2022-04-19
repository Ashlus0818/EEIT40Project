package com.eeit40.springbootproject.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ForumIDRepository extends JpaRepository<ForumID, Integer>{

}
