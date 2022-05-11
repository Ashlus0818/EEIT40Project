package com.eeit40.springbootproject.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eeit40.springbootproject.logintest.AppUser;
import com.eeit40.springbootproject.logintest.AppUserService;

@Controller
public class AppUserController {

	@Autowired
	AppUserService aService;

	@PostMapping("/back/viewAccount")
	public String viewAccount(Model model, @RequestParam("userName") String name) {
		AppUser appUser = new AppUser();
		model.addAttribute("appUser", appUser);
		AppUser bean = aService.findByUserName(name);

		model.addAttribute("bean", bean);
		return "AppUserDetails";
	}

	@ResponseBody
	@PostMapping("/back/updateAppUser")
	public String updateAppUser(@ModelAttribute("bean")AppUser appUser, BindingResult result, ModelMap model) {
		if(result.hasErrors()) {
			return "error";
		}
//		model.addAttribute("userName", appUser.getUserName());
//		model.addAttribute("userGender", appUser.getUserGender());
//		model.addAttribute("userBirth", appUser.getUserBirth());
//		model.addAttribute("userAddress", appUser.getUserAddress());
//		model.addAttribute("lastModified", new Date());
//		model.addAttribute("userPwd", appUser.getUserPwd());
		aService.Update(appUser);
		return "updateAppUser";
	}
	
	@PostMapping("/back/checkAppUserPwd")
	public void checkAppUserPwd(Model model, @RequestParam("pwd") String pwd) {
		PasswordEncoder encoder = new BCryptPasswordEncoder();
		encoder.matches(pwd, "databasepwd");  
	}
}
