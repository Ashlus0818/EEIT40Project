package com.eeit40.springbootproject.loginTest;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AppUserAuthorityRepository extends JpaRepository<AppUserAuthority, Integer>{
	
}
