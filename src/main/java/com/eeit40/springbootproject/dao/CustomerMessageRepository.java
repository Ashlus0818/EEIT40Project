package com.eeit40.springbootproject.dao;


import java.util.Collection;
import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.eeit40.springbootproject.model.CustomerMessage;


public interface CustomerMessageRepository extends JpaRepository<CustomerMessage, Integer> {
	
	public CustomerMessage findFirstByOrderByDateDesc();

	@Modifying
	@Query(value="INSERT INTO CustomerMessage(messageName,messageEmail,messageQuest,messagetext)values(?1,?2,?3,?4)",nativeQuery = true)
	List<CustomerMessage> addMestoCustomerMessage(String messageName,String messageEmail,String messageQuest,String messagetext);
	
	@Query("from CustomerMessage where messageQuest = ?1")
    public Collection<CustomerMessage> find1(String text1);
}
