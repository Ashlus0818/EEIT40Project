package com.eeit40.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.ReservationMessageTest;
import com.eeit40.springbootproject.service.ReservationMessageTestService;

@Controller
public class PageController {
	
	@Autowired
	private ReservationMessageTestService messageService;
	
	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/2")
	public String index2() {
		return "second";
	}
	//路徑myapp來自於application.properties
	//http://localhost:8080/myapp/ReMsgTest
	//測試老師msg功能從這裡先輸入網址開始(上面)-->連到indexReMsgTest.jsp-->再連到default.jsp-->
	//根據default裡的功能再連到下面add或view
	@GetMapping("/ReMsgTest")
	public String welcomIndex() {
		return "indexReMsgTest";
	}
	
	//3/31錄影 10點的 1:00:00 & 1:05:00成功
	//搭配ReservationMsgTestController的@PostMapping("/message/add"),一個get 一個post
	@GetMapping("/message/add")
	public ModelAndView addMessagePage(ModelAndView mav) {
		
		//因為formform,()要先有空的建構子
		//new一個空的message並放到model裡面
		//put為一個key(屬性),value(物件)形式-->key放modelAttribute裡寫的名字,value放你new的空message
		//因為是getModel(把東西放到model裡面),最後回傳mav
		//put就是把東西放到ModelAndView的Model裡面
		ReservationMessageTest message = new ReservationMessageTest();
		mav.getModel().put("reservationMessageTest", message);
		
		ReservationMessageTest lastMag = messageService.getLastest();
		mav.getModel().put("lastMessage", lastMag);
		
		//ModelAndView設定view的名字(ReserveAddMsgTest)
        mav.setViewName("ReserveAddMsgTest");
		return mav;
		//所以最後mav裡的model有空的message,view裡面有view的名字(jsp名字)
		//return mav時會轉到view的頁面,並把空的物件放到model
		
		
	}
	
	@GetMapping("/message/viewMessages")
	public ModelAndView viewMessages(ModelAndView mav, @RequestParam(name="p", defaultValue = "1") Integer pageNumber) {
		Page<ReservationMessageTest> page = messageService.findByPage(pageNumber);
		
		mav.getModel().put("page", page);
		mav.setViewName("viewMessages");
		
		return mav;
	}
	
	
	
}
 