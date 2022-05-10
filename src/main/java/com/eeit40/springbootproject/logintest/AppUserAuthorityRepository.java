package com.eeit40.springbootproject.logintest;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AppUserAuthorityRepository extends JpaRepository<AppUserAuthority, Integer>{
	
}
