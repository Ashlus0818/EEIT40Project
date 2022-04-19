package com.eeit40.springbootproject.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ForumreportRepository extends JpaRepository<Forumreport, Integer>{

}
