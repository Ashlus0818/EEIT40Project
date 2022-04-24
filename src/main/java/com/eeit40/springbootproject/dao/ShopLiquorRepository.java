package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ShopLiquor;

@Repository
public interface ShopLiquorRepository extends JpaRepository<ShopLiquor, Integer> {

}
