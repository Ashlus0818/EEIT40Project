package com.eeit40.springbootproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.eeit40.springbootproject.model.ReservationStore;


@Repository
public interface ReservationStoreRepository extends JpaRepository<ReservationStore, Integer>{

}
