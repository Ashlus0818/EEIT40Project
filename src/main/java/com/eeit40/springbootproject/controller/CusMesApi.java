package com.eeit40.springbootproject.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.CrossOrigin;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RestController;

import com.eeit40.springbootproject.dto.CusMesDto;

@RestController
public class CusMesApi {
	
	
	
	@CrossOrigin("*")
	@PostMapping(value="/cusmes")
	public List<String> test(@RequestBody CusMesDto dto){
		String name = dto.getCusname();
		String email = dto.getCusemail();
		String quest = dto.getCusquest();
		String text = dto.getCustext();
		System.out.println(name);
		System.out.println(email);
		System.out.println(quest);
		System.out.println(text);
		return null;
	}

//	@PostMapping(value = "/test2")



//	@PostMapping(value = "/test")


//	 public List<String> test(@RequestParam("message") String string){
	public List<String> test(HttpServletRequest request) throws IOException {
		List<String> list = new ArrayList<>();
		list.add(0, "name");
		list.add(1, "email");
		list.add(2, "quest");
		list.add(3, "text");
//		JSONObject jObj = new JSONObject(request.getParameter(""));
//		System.out.println(request.getParameter("message"));
		// String body = IOUtils.toString(request.getInputStream(),
		// StandardCharsets.UTF_8);



		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));

		String json = "";
		if (br != null) {
			json = br.readLine();
			System.out.println(json);
		}

//		System.out.println();
//		System.out.println(list);
		return list;
	}

//	@PostMapping("/test")
//	public String getJson(@RequestParam("message") String string) throws IOException {
//		System.out.println(string);
//		return null;
//	}
	
}

