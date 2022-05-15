package com.eeit40.springbootproject.controller.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ReservationOrderRepository;
import com.eeit40.springbootproject.model.ReservationOrder;
import com.eeit40.springbootproject.model.ReservationStore;
import com.eeit40.springbootproject.service.ReservationOrderService;

@Controller
public class ReservationOrderController {

	@Autowired
	private ReservationOrderRepository dao;

	@Autowired
	private ReservationOrderService reservationOrderService;
	
	//搜尋日期時同時比較各店面時段剩餘空檔
	@GetMapping("/front/orderList")
	@ResponseBody
	public List<ReservationOrder> text(@RequestParam("orderStoreName") String storeName,@RequestParam("orderDate") String day){
		
//		System.out.println(storeName);
//		System.out.println(day);
	
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
	
	
	//預約頁面送出
	@PostMapping("/re/saveReservation")
    @ResponseBody
//    public String addReservation(ModelAndView mav,@Valid @ModelAttribute(name = "ReservationOrder") ReservationOrder reS,
//            BindingResult br) {
    public ReservationOrder addReservation(@RequestParam("orderStoreName") String orderStoreName,
    		@RequestParam("orderTime") String orderTime,
    		@RequestParam("orderDate") String orderDate,
    		@RequestParam("orderStorePop") Integer orderStorePop,
    		Authentication authentication
            ) {
		ReservationOrder newreS = new ReservationOrder();
		System.out.println(authentication.getName());
		
//		System.out.println(orderStoreName);
//		System.out.println(orderTime);
//		System.out.println(orderDate);
//		System.out.println(orderStorePop);

		newreS.setOrderMemberEmail(authentication.getName());
		newreS.setOrderStoreName(orderStoreName);
		newreS.setOrderTime(orderTime);
		newreS.setOrderDate(orderDate);
		newreS.setOrderStorePop(orderStorePop);
		
		
		ReservationOrder result = reservationOrderService.insert(newreS);
//
//        if (!br.hasErrors()) {
//        	reservationOrderService.insert(reS);
//
//            mav.getModel().put("ReservationOrder", newreS);
//        } 
//        mav.setViewName("/FrontJsp/Re-Order"); //這段沒用?
        return result;
	}

	

	@PostMapping("/front/Re-OrderByName")
	public ModelAndView ReservationStore(ModelAndView mav,@RequestParam("orderStoreName") String name,
			@RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		Page<ReservationStore> page = reservationOrderService.findByName(name,pageNumber);

		mav.getModel().put("pageOrder1", page);
		mav.setViewName("FrontJsp/Re-OrderByName"); // 目標jsp路徑

		return mav;
	}
	
}
