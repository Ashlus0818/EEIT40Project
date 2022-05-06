//package com.eeit40.springbootproject.logintest;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.http.HttpMethod;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.User.UserBuilder;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//
//@EnableWebSecurity
//public class SecurityConfig extends WebSecurityConfigurerAdapter{
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception{
//		http.authorizeRequests()
//			.anyRequest()
//			.authenticated()
//			.and()
//			.formLogin()
//	        .loginProcessingUrl("/login")
//            .usernameParameter("username")
//            .passwordParameter("password")
////			.and()
////			.httpBasic()
//			.and().csrf().disable();
////			.antMatchers(HttpMethod.GET, "/")
////			.authenticated()
//			
//	}
//	
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
////	@Autowired
////	DataSource ds;
////	@Bean
////	@Override
////	protected UserDetailsService userDetailsService() {
////		JdbcUserDetailsManager mananger = new JdbcUserDetailsManager();
////		mananger.setDataSource(ds);
////	}
//	
//}
