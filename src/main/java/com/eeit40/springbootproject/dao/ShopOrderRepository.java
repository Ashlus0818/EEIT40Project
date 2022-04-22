package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ShopOrder;

@Repository
public interface ShopOrderRepository extends JpaRepository<ShopOrder, Integer> {

}
