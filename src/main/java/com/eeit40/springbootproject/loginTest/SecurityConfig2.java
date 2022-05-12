//package com.eeit40.springbootproject.loginTest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.core.annotation.Order;
//import org.springframework.http.HttpMethod;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.User.UserBuilder;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig2 {//extends WebSecurityConfigurerAdapter {
//    @Configuration
//    @Order(1)
//    public static class backConfigurationAdapter extends WebSecurityConfigurerAdapter {
//    	 public backConfigurationAdapter() {
//             super();
//         }
//    	 @Override
//    	protected void configure(HttpSecurity http) throws Exception {
//    		 http.antMatcher("/").authorizeRequests().anyRequest().hasRole("admin")
//             // log in
//             .and().formLogin().loginPage("/BackLogin").loginProcessingUrl("/login");
//             // logout
////             .and().logout().logoutUrl("/admin_logout").logoutSuccessUrl("/protectedLinks").deleteCookies("JSESSIONID").and().exceptionHandling().accessDeniedPage("/403").and().csrf().disable();
//    		}
//    }
//    @Configuration
//    @Order(2)
//    public static class frontConfigurationAdapter extends WebSecurityConfigurerAdapter {
//    	public frontConfigurationAdapter() {
//            super();
//        }
//    	@Override
//    	protected void configure(HttpSecurity http) throws Exception {
//    		http.antMatcher("/front").authorizeRequests().anyRequest().hasRole("user")
//            // log in
//            .and().formLogin().loginPage("/front/login").loginProcessingUrl("/login");
//            // logout
////            .and().logout().logoutUrl("/user_logout").logoutSuccessUrl("/protectedLinks").deleteCookies("JSESSIONID").and().exceptionHandling().accessDeniedPage("/403").and().csrf().disable();
//    	}
//    }
//	
//	// 注意！規定！要建立密碼演算的實例
//	@Bean
//	public PasswordEncoder getPasswordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
//}
