package com.eeit40.springbootproject.loginTest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;

import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
@Configuration
@EnableWebSecurity
public class SecurityConfig2 {//extends WebSecurityConfigurerAdapter {
	@Autowired
	private  AppUserService userService;

    @Configuration
    @Order(1)
    public static class backConfigurationAdapter extends WebSecurityConfigurerAdapter {

		@Override
    	protected void configure(HttpSecurity http) throws Exception {
    		http.requestMatchers()
    		
    		.antMatchers("/front/showCartList")
    		.antMatchers("/front/Shop-cart")
    		.antMatchers("/front/Shop-detail")
    		.antMatchers("/front/Shop-order-tracking")
    		.antMatchers("/front/Re-Order")
    		.antMatchers("/front/afterfrontlogin")
    		.and().authorizeHttpRequests().antMatchers("/**").hasAnyRole("admin","manager","customer")
    		.and().formLogin().loginProcessingUrl("/front/afterfrontlogin").loginPage("/front/login");
    		http.csrf().disable();
    		
    		
    	}

    }
    
    @Configuration
    @Order(2)
    public static class frontConfigurationAdapter extends WebSecurityConfigurerAdapter {

		@Autowired
		private UserDetailsService appUserService;
		@Autowired
		private MyAccessDeniedHandler myAccessDeniedHandler;
    	@Override
    	protected void configure(HttpSecurity http) throws Exception {
    		http.authorizeHttpRequests()
    		.antMatchers("/BackLogin").permitAll()
    		.antMatchers("/loginFail").permitAll()
    		.antMatchers("/error").permitAll()
    		.antMatchers("/back/checkAppUserUserName").permitAll()
    		.antMatchers("/").hasAnyRole("admin","manager")
    		.antMatchers("/index").hasAnyRole("admin","manager")
    		.antMatchers("/backTask").hasAnyRole("admin","manager")
    		.and().formLogin().loginProcessingUrl("/login").loginPage("/BackLogin");;
    		http.csrf().disable();
    		
    		http.logout()
    		.deleteCookies("JSESSIONID")
    		.logoutSuccessUrl("/front")
    		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
    		
    		http.exceptionHandling().accessDeniedHandler(myAccessDeniedHandler);
    	}

    }
	// ????????????????????????????????????????????????
	@Bean
	public BCryptPasswordEncoder getPasswordEncoder1() {
		return new BCryptPasswordEncoder();
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder builder)throws Exception {
		builder.userDetailsService(userService);
	}
}
