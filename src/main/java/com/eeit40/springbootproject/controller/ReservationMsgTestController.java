package com.eeit40.springbootproject.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

		
//呼叫順序本controller呼叫service,service呼叫dao
//例如本程式messageService.insert(msg); 表示本controller呼叫service的insert方法,而在service insert方法可以看到他呼叫dao
	}

	
	
//	@GetMapping("/message/editMessage")
//	public String editMessage(Model model, @RequestParam(name="id") Integer id) {
//
//		WorkMessages msg = messageService.findById(id);
//		model.addAttribute("workMessage", msg);
//		
//		return "editMessage";
//	}
//	
//	@PostMapping("message/editMessage")
//	public ModelAndView editMessage(ModelAndView mav, @Valid @ModelAttribute(name="workMessage") WorkMessages msg, BindingResult br) {
//		
//		mav.setViewName("editMessage");
//		
//		if(!br.hasErrors()) {
////			https://docs.spring.io/spring-data/jpa/docs/current/reference/html/#jpa.entity-persistence.saving-entites
//			messageService.insert(msg);
//			mav.setViewName("redirect:/message/viewMessages");
//		}
//		
//		return mav;
//		
//	}
//	
//	@GetMapping("message/deleteMessage")
//	public ModelAndView deleteMessage(ModelAndView mav, @RequestParam(name="id") Integer id) {
//		messageService.deleteById(id);
//		
//		mav.setViewName("redirect:/message/viewMessages");
//		
//		return mav;
//	}
	
	
	
	
	
	
	
	
}
