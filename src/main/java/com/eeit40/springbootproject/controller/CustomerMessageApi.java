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

import com.eeit40.springbootproject.dto.CustomerMessageDto;

@RestController
public class CustomerMessageApi {

//		private final String port = "8090";

//		@CrossOrigin("*")
//		@PostMapping(value = "/cusmes")
		public List<String> test(@RequestBody CustomerMessageDto dto) {
			String text = dto.getCustname();
			String text2 = dto.getCustemail();
			String text3 = dto.getCustquest();
			String text4 = dto.getCusttext();
			
			System.out.println(text);
			System.out.println(text2);
			System.out.println(text3);
			System.out.println(text4);
			return null;
		}

//		@PostMapping(value = "/cusmes")
//		 public List<String> test(@RequestParam("message") String string){
		public List<String> test(HttpServletRequest request) throws IOException {
			List<String> list = new ArrayList<>();
			list.add(0, "name");
			list.add(1, "email");
			list.add(3, "quest");
			list.add(4, "text");

//			JSONObject jObj = new JSONObject(request.getParameter(""));
			System.out.println(request.getParameter("name"));
			// String body = IOUtils.toString(request.getInputStream(),
			// StandardCharsets.UTF_8);

			BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));

			String json = "";
			if (br != null) {
				json = br.readLine();
				System.out.println(json);
			}

//			System.out.println();
//			System.out.println(list);
			return list;
		}

//		@PostMapping("/test")
//		public String getJson(@RequestParam("message") String string) throws IOException {
//			System.out.println(string);
//			return null;
//		}
	}
