package com.eeit40.springbootproject.logintest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private  AppUserService userService;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
//		 表單提交

		http.formLogin()
				// login.jsp 表單 action 內容(action="/login") spring boot預設的，不會經過controller的樣子，待驗證
				.loginProcessingUrl("/login")
				// 自定義登入頁面
				.loginPage("/BackLogin");
				// 登入成功之後要造訪的頁面

//				.successForwardUrl("/index"); // welcome 頁面
//				 登入失敗後要造訪的頁面
//				.failureForwardUrl("/loginFail");

		http.authorizeHttpRequests()
		.antMatchers("/BackLogin").permitAll()
		.antMatchers("/loginFail").permitAll()
		.antMatchers("/error").permitAll()
		.antMatchers("/front").permitAll()
		.antMatchers("/").hasAnyRole("admin","manager")
		.antMatchers("/index").hasAnyRole("admin","manager")
		.antMatchers("/backTask").hasAnyRole("admin","manager")
		.antMatchers("/BackInsert").hasAnyRole("admin","manager")
		.antMatchers("/back/**").hasAnyRole("admin","manager")
		.antMatchers("/post").hasAnyRole("admin","manager")
		.antMatchers("/ReMsgTest").hasAnyRole("admin","manager")
		.antMatchers("/message/add").hasAnyRole("admin","manager")
		.antMatchers("/message/viewMessages").hasAnyRole("admin","manager")
		.antMatchers("/backstage/ReservationStore").hasAnyRole("admin","manager")
		.antMatchers("/CusMesback").hasAnyRole("admin","manager")
		.antMatchers("/message/**").hasAnyRole("admin","manager","customer")
		.antMatchers("/addShopLiquor").hasAnyRole("admin","manager")
		.antMatchers("/addShopOrder").hasAnyRole("admin","manager")
		.antMatchers("/addShopCart").hasAnyRole("admin","manager")
		.antMatchers("/addShopInventory").hasAnyRole("admin","manager")
		.antMatchers("/front/**").hasAnyRole("admin","manager","customer")
		.antMatchers("/re/**").hasAnyRole("admin","manager","customer")
		.antMatchers("/ForumFrontPostlist").hasAnyRole("admin","manager","customer")
		.antMatchers("/ForumFrontAddpost").hasAnyRole("admin","manager","customer")
		.antMatchers("/ForumFrontAddreply").hasAnyRole("admin","manager","customer")
		.antMatchers("/ForumFrontAddreport").hasAnyRole("admin","manager","customer")
		.antMatchers("/ForumFrontEditpost").hasAnyRole("admin","manager","customer")
		.antMatchers("/ForumFrontEditreply").hasAnyRole("admin","manager","customer")
		.antMatchers("/ForumFrontOnepost").hasAnyRole("admin","manager","customer")
		.antMatchers("/front/orderList").hasAnyRole("admin","manager")
		.antMatchers("/front/Re-Order").hasAnyRole("admin","manager")
		.antMatchers("/saveReservation").hasAnyRole("admin","manager");
//		.antMatchers("/").authenticated();
		
//		.antMatchers("/").authenticated()
		

		http.csrf().disable();  //因為這段註解掉所以ajax post請求會出403
//			

	}
	// 注意！規定！要建立密碼演算的實例
		@Bean
		public PasswordEncoder getPasswordEncoder() {
			return new BCryptPasswordEncoder();
		}

//    @Bean
//    public UserDetailsService userDetailsService() {
//        
//        UserBuilder users = User.withDefaultPasswordEncoder();
//        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
//        manager.createUser(users.username("user123")
//                                .password("user123")
//                                .roles("USER").build());
//        
//        manager.createUser(users.username("admin123")
//                                .password("admin123")
//                                .roles("USER", "ADMIN")
//                                .build());
//        
//        return manager;
//    }

//	@Autowired
//	private UserDetailsService userDetailsService;
//	
//	@Override
//    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//        auth
//                .userDetailsService(userDetailsService)
//                .passwordEncoder(new BCryptPasswordEncoder());
//    }

//	@Autowired
//	DataSource ds;
//	@Bean
//	@Override
//	protected UserDetailsService userDetailsService() {
//		JdbcUserDetailsManager mananger = new JdbcUserDetailsManager();
//		mananger.setDataSource(ds);
//	}

}
