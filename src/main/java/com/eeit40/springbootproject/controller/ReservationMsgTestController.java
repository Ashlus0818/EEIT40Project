package com.eeit40.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.ReservationMessageTest;
import com.eeit40.springbootproject.service.ReservationMessageTestService;

@Controller
public class ReservationMsgTestController {

	@Autowired
	private ReservationMessageTestService messageService;

	//3/31錄影 10點的 1:00:00 & 1:05:00成功
	// ""字串裡要塞的路徑,因為ReserveAddMsgTest裡的formform表單沒有action所以要連pageController的get的路徑
	@PostMapping("/message/add")
	// ModelAndView一定要先寫,再寫@ModelAttribute
	//這裡的msg就有PageController裡mav原為空的物件打上訊息後非空的物件-->insert-->setViewName跳轉頁面-->回傳mav
	public ModelAndView addMessage(ModelAndView mav,@ModelAttribute(name = "reservationMessageTest") ReservationMessageTest msg) {
		messageService.insert(msg);

		// view的名字會在jsp底下的addMessage
		mav.setViewName("ReserveAddMsgTest");

		return mav;

	}

}
