//package com.eeit40.springbootproject.logintest;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//@Controller
//public class AppUserController {
//	@Autowired
//	private AppUserService appUserService;
//	
//
//	@PostMapping(value="appUser")
//	public String findByUserName(@RequestParam(value="userName")String userName, @RequestParam(value="userPwd")String pwd, HttpSession session) {
//		System.out.println(userName+" "+pwd);
//		AppUser user = appUserService.findByUserName(userName);
//		if(user!=null&&user.getUserPwd().equals(pwd)) {
//			session.setAttribute("status", 1);
//			return "redirect:/";
//		}
//		else {
//			return "redirect:/login";
//		}
//	}
//}
