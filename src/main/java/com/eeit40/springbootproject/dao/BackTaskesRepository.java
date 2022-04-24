package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.eeit40.springbootproject.model.BackTaskes;

@Repository
public interface BackTaskesRepository extends JpaRepository<BackTaskes,Integer>{

}
