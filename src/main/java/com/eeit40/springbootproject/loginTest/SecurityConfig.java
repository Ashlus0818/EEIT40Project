//package com.eeit40.springbootproject.loginTest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.core.annotation.Order;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//
//@Configuration
//@Order(2)
//public class SecurityConfig extends WebSecurityConfigurerAdapter {
//
//	@Autowired
//	private  AppUserService userService;
//	
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
////		 表單提交
//		
////		http.formLogin()
////				// login.jsp 表單 action 內容(action="/login") spring boot預設的，不會經過controller的樣子，待驗證
////				.loginProcessingUrl("/admin_login")
////				// 自定義登入頁面
////				.loginPage("/BackLogin");
//				// 登入成功之後要造訪的頁面
//
////				.successForwardUrl("/index"); // welcome 頁面
////				 登入失敗後要造訪的頁面
////				.failureForwardUrl("/loginFail");
//		
//		
//		http.authorizeHttpRequests()
//		.antMatchers("/BackLogin").permitAll()
//		.antMatchers("/loginFail").permitAll()
//		.antMatchers("/error").permitAll()
//		.antMatchers("/").permitAll()
//		.antMatchers("/index").hasAnyRole("admin","manager")
//		.antMatchers("/backTask").hasAnyRole("admin","manager")
//		.antMatchers("/BackInsert").hasAnyRole("admin","manager")
//		.and().formLogin().loginPage("/BackLogin").loginProcessingUrl("/admin_login");
////		.antMatchers("/").authenticated();
//		
////		.antMatchers("/").authenticated()
//		
//		http.csrf().disable();  //因為這段註解掉所以ajax post請求會出403
////			
//		
//
//	}
//	// 注意！規定！要建立密碼演算的實例
//		@Bean
//		public PasswordEncoder getPasswordEncoder() {
//			return new BCryptPasswordEncoder();
//		}
//		
//		
//		@Autowired
//		public void configureGlobal(AuthenticationManagerBuilder builder)throws Exception {
//			builder.userDetailsService(userService);
//		}
////    @Bean
////    public UserDetailsService userDetailsService() {
////        
////        UserBuilder users = User.withDefaultPasswordEncoder();
////        InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
////        manager.createUser(users.username("user123")
////                                .password("user123")
////                                .roles("USER").build());
////        
////        manager.createUser(users.username("admin123")
////                                .password("admin123")
////                                .roles("USER", "ADMIN")
////                                .build());
////        
////        return manager;
////    }
//
////	@Autowired
////	private UserDetailsService userDetailsService;
////	
////	@Override
////    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
////        auth
////                .userDetailsService(userDetailsService)
////                .passwordEncoder(new BCryptPasswordEncoder());
////    }
//
//
//
//
////	@Autowired
////	DataSource ds;
////	@Bean
////	@Override
////	protected UserDetailsService userDetailsService() {
////		JdbcUserDetailsManager mananger = new JdbcUserDetailsManager();
////		mananger.setDataSource(ds);
////	}
//
//
//}
