package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eeit40.springbootproject.model.ReservationMessageTest;

public interface ReservationMessageTestRepository extends JpaRepository<ReservationMessageTest, Integer>{    

	//找第一筆資料,藉由新增時間和降冪排序
	public ReservationMessageTest findFirstByOrderByAddedDesc();
	
}
