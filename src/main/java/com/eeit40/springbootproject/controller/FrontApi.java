package com.eeit40.springbootproject.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
//import org.json.JSONObject;

import com.eeit40.springbootproject.dto.MessageDto;

@RestController
public class FrontApi {
	private final String port = "8090";

	@CrossOrigin("*")
	@PostMapping(value="/test")
	public List<String> test(@RequestBody MessageDto dto){
		String text = dto.getMsg();
		String text2 = dto.getMsg2();
		System.out.println(text);
		System.out.println(text2);
		return null;
	}
	@PostMapping(value = "/test2")
	// public List<String> test(@RequestParam("message") String string){
	public List<String> test(HttpServletRequest request) throws IOException {
		List<String> list = new ArrayList<>();
		list.add(0, "name");
		list.add(1, "num");
		
//		JSONObject jObj = new JSONObject(request.getParameter(""));
		System.out.println(request.getParameter("message"));
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
