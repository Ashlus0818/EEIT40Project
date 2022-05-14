package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eeit40.springbootproject.model.CusMesBackMail;

public interface CustomerMessageBackMailRepository extends JpaRepository<CusMesBackMail, Integer> {

}
