package com.eeit40.springbootproject.controller.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.eeit40.springbootproject.dao.ReservationOrderRepository;
import com.eeit40.springbootproject.model.ReservationOrder;

@Controller
public class ReservationOrderController {

	@Autowired
	private ReservationOrderRepository dao;

	@GetMapping("texttttt")
	@ResponseBody
	public List<ReservationOrder> text(@RequestParam("orderStoreName") String storeName,@RequestParam("orderDate") String day) {

		List<ReservationOrder> result = dao.checkTime(storeName, day);
		for (ReservationOrder r : result) {
			System.out.println(r.getOrderStoreName());
			// for迴圈裡再比較時間
			// 比較時間有沒依樣 //失敗回傳
		}

		return result; // 成功回傳
	}
	// ajax
	// success function裡要寫成功和失敗(失敗回傳失敗)

	// postman
	// http://localhost:8080/myapp/texttttt?orderStoreName=信義信安店&orderDate=220205

}
