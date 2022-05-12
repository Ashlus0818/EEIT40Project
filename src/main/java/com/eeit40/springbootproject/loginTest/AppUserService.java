package com.eeit40.springbootproject.loginTest;

import java.util.LinkedHashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
@Service
public class AppUserService implements UserDetailsService{
	
	@Autowired
	private AppUserRepository appUserRepository;
		
	@Autowired
	private AppUserAuthorityRepository appUserAuthorityRepository;

	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

		AppUser data = appUserRepository.findByUserName(userName);
		if(data==null) throw new UsernameNotFoundException("Not found!");
		return new User(data.getUserName(), 
				data.getUserPwd(), 
				AuthorityUtils.commaSeparatedStringToAuthorityList(data.getAppUserAuthority().getAuthority()));
	}

	public AppUser findByUserName(String userName) {
		return appUserRepository.findByUserName(userName);
	}
	
	public void insertNewCustomer(String userName, String userPwd) {
		PasswordEncoder pe = new BCryptPasswordEncoder();//密碼要加密
		String ecode = pe.encode(userPwd);
		AppUser appuser = new AppUser();//new AppUser的Bean
		appuser.setUserName(userName);
		appuser.setUserPwd(ecode);
		AppUserAuthority appUserAuthority = appUserAuthorityRepository.findById(3).get();//選權限
		appuser.setAppUserAuthority(appUserAuthority);//把AppUserAuthority的authority欄位放進AppUser Bean裡面(一對多)
		Set<AppUser> appUserSet = new LinkedHashSet<AppUser>();//把多方放進set才能給一方對應
		appUserSet.add(appuser);
		appUserAuthority.setAppuser(appUserSet);//把AppUser Bean放進AppUserAuthority Bean(多對一)
		appUserAuthorityRepository.save(appUserAuthority);
	}
	
	public void Update(AppUser appUser) {
		appUserRepository.save(appUser);
	}
}
