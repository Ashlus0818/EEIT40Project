package com.eeit40.springbootproject.controller.front;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ReservationOrderRepository;
import com.eeit40.springbootproject.model.ReservationOrder;
import com.eeit40.springbootproject.service.ReservationOrderService;

@Controller
public class ReservationOrderController {

	@Autowired
	private ReservationOrderRepository dao;

	@Autowired
	private ReservationOrderService reservationOrderService;
	
	@GetMapping("/front/orderList")
	@ResponseBody
	public List<ReservationOrder> text(@RequestParam("orderStoreName") String storeName,@RequestParam("orderDate") String day){
		
		List<ReservationOrder> result=  dao.checkTime(storeName, day);
		for(ReservationOrder  r : result) {
	//System.out.println(r.getOrderStoreName());
	//for迴圈裡再比較時間
	// 比較時間有沒依樣   //失敗回傳
		}		
		return result;  //成功回傳
	}
	//ajax 
	//success function裡要寫成功和失敗(失敗回傳失敗)  
	        
	// postman   http://localhost:8080/myapp/front/orderList?orderStoreName=信義信安店&orderDate=2202-05-06  已改過不確定	
	
	
	//接Ajax傳的日期、店名、人數
	@PostMapping("/re/saveReservation")
    @ResponseBody
    public String addReservation(ModelAndView mav,@Valid @ModelAttribute(name = "ReservationOrder") ReservationOrder reS,
            BindingResult br) {
		ReservationOrder newreS = new ReservationOrder();

        if (!br.hasErrors()) {
        	reservationOrderService.insert(reS);

            mav.getModel().put("ReservationOrder", newreS);
        } 
        mav.setViewName("/FrontJsp/Re-Order"); //這段沒用?
        return "新增成功";
	}

}
