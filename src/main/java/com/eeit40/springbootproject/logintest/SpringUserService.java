//package com.eeit40.springbootproject.logintest;
//
//import java.util.Collections;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Service;
//
//@Service
//public class SpringUserService implements UserDetailsService{
//	
//	@Autowired
//	private AppUserService aService;
//
//	@Override
//	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
//		 try {
//	            AppUser user = aService.findByUserName(userName);
//
//	            return new User(user.getUserName(), user.getUserPwd(), Collections.emptyList());
//	        } catch (Exception e) {
//	            throw new UsernameNotFoundException("Username is wrong.");
//	        }
//	}
//
//	
//}
