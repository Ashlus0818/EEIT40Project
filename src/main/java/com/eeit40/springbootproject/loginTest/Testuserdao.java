package com.eeit40.springbootproject.loginTest;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;
//模擬資料庫
@Repository
public class Testuserdao {

	public Map<String, Map<String, String>> getFakeData(){
		Map<String, String> info1 = new LinkedHashMap<>();
		info1.put("password", "$2a$10$AVqlik75aZH7Ei0q5otyCeAv2ZbHAfiDjv2dopOOc1hSJWLi3QUou"); // 1234
		info1.put("authority", "ROLE_admin");

		Map<String, Map<String, String>> users = new LinkedHashMap<>();
		users.put("ashleyashlus@gmail.com", info1);
		users.put("yueteen841216@gmail.com", info1);
		users.put("patrickw0405@gmail.com", info1);
		users.put("dyds1346@gmail.com", info1);
		users.put("Traverser04@gmail.com", info1);
		return users;
	}
}
