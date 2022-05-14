//package com.eeit40.springbootproject.loginTest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.core.annotation.Order;
//
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig2 {//extends WebSecurityConfigurerAdapter {
//	
//    @Configuration
//    @Order(2)
//    public static class backConfigurationAdapter extends WebSecurityConfigurerAdapter {
//		@Autowired
//		private UserDetailsService appUserService;
//		@Override
//    	protected void configure(HttpSecurity http) throws Exception {
//    		http.authorizeHttpRequests()
//    		.antMatchers("/BackLogin").permitAll()
//    		.antMatchers("/loginFail").permitAll()
//    		.antMatchers("/error").permitAll().antMatchers("/").hasAnyRole("admin","manager")
//    		.antMatchers("/index").hasAnyRole("admin","manager")
//    		.antMatchers("/backTask").hasAnyRole("admin","manager")
//    		.antMatchers("/front").hasAnyRole("admin","manager")
//    		.and().formLogin().loginProcessingUrl("/login").loginPage("/BackLogin");;
//    		http.csrf().disable();
//    	}
//    	@Bean
//    	public PasswordEncoder getPasswordEncoder2() {
//    		return new BCryptPasswordEncoder();
//    	}
//    }
//    
//    @Configuration
//    @Order(1)
//    public static class frontConfigurationAdapter extends WebSecurityConfigurerAdapter {
////		@Autowired
////		BCryptPasswordEncoder bCryptPasswordEncoder;
//		@Autowired
//		private UserDetailsService appUserService;
//		
////		@Override
////		public void configure(AuthenticationManagerBuilder auth) throws Exception {
////			auth.userDetailsService(appUserService).passwordEncoder(bCryptPasswordEncoder);
////		}
//		
//    	@Override
//    	protected void configure(HttpSecurity http) throws Exception {
//    		http.authorizeHttpRequests()
//    		.antMatchers("/BackLogin").permitAll()
//    		.antMatchers("/loginFail").permitAll()
//    		.antMatchers("/error").permitAll().antMatchers("/").hasAnyRole("admin","manager")
//    		.antMatchers("/index").hasAnyRole("admin","manager")
//    		.antMatchers("/backTask").hasAnyRole("admin","manager")
//    		.and().formLogin().loginProcessingUrl("/login").loginPage("/BackLogin");;
//    		http.csrf().disable();
//    	}
//    	@Bean
//    	public PasswordEncoder getPasswordEncoder() {
//    		return new BCryptPasswordEncoder();
//        }
//}
//	// 注意！規定！要建立密碼演算的實例
//
//	@Bean
//	public BCryptPasswordEncoder getPasswordEncoder1() {
//		return new BCryptPasswordEncoder();
//	}
//
//	@Bean
//	public PasswordEncoder getPasswordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
//}

