package com.eeit40.springbootproject.logintest;

import java.util.Map;
import java.util.Map.Entry;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
@Service
public class SpringUserService implements UserDetailsService{
	
	@Autowired
	private AppUserService aService;

	@Autowired
	private Testuserdao tdao;
	
	@Autowired
	private AppUserRepository appdao;
	
//@Autowired
//private AppUserAuthority appUserAuthority;
	

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		PasswordEncoder pe = new BCryptPasswordEncoder();
		String ecode = pe.encode("1234");
		AppUser au = new AppUser(userName, ecode);
//		AppUserAuthority aua1 = new AppUserAuthority("manager");
		
//		au.setAppUserAuthority("manager");
//		appdao.save(au);
		
		//		 try {
//	            AppUser user = aService.findByUserName(userName);
//
//	            return new User(user.getUserName(), user.getUserPwd(), Collections.emptyList());
//	        } catch (Exception e) {
//	            throw new UsernameNotFoundException("Username is wrong.");
//	        }
		System.out.println("loadUserByUsername: " + userName);
		// 1. 查詢用戶是否存在 ?
		
		Map<String, Map<String, String>> opt = tdao.getFakeData();
		System.out.println(opt+" /// ");
		if(!opt.containsKey(userName)) throw new UsernameNotFoundException("Not found!");
		
		// 2. 取得相關資料並進行密碼比對
		Map<String, String> info = opt.get(userName);
		String password = info.get("password");
		String authority = info.get("authority");
		return new User(userName, 
						password, 
						AuthorityUtils.commaSeparatedStringToAuthorityList(authority));
	}

	
}
