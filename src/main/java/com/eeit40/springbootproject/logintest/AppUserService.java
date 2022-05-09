package com.eeit40.springbootproject.logintest;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class AppUserService {
	@Autowired
    private AppUserRepository appDao;
	
	

//    private BCryptPasswordEncoder passwordEncoder;

    
    public AppUser findByUserName(String userName) {
    	return appDao.findByUserName(userName);
    }
    

}