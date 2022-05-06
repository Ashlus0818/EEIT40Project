package com.eeit40.springbootproject.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ReservationOrder;


@Repository 
//紫色字左邊(ReservationStore)是目前的資料型別,右邊(Integer)是這entity的id的資料型別
public interface ReservationOrderRepository extends JpaRepository<ReservationOrder, Integer> {

	
}
