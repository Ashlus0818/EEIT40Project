package com.eeit40.springbootproject.logintest;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AppUserRepository extends JpaRepository<AppUser,Integer>{
	@Query("FROM AppUser a WHERE userName = ?1")
	public AppUser findByUserName(String userName);
}
