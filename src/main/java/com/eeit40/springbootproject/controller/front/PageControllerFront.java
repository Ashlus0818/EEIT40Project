package com.eeit40.springbootproject.controller.front;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.ReservationStore;
import com.eeit40.springbootproject.service.ReservationOrderService;
import com.eeit40.springbootproject.service.ReservationStoreService;

@Controller
public class PageControllerFront {

	@Autowired
	private ReservationOrderService ReOrderService;

	@GetMapping("/front/login")
	public String login() {
		return "FrontJsp/FrontLogin";
	}
	
	//前臺首頁
	@GetMapping("/front")
	public String front() {
		return "FrontJsp/index";
	}

	@GetMapping("/front/Blog-details-fullwidth")
	public String blogDetailsFullwidth() {
		return "FrontJsp/Blog-details-fullwidth";
	}

	@GetMapping("/front/Coming-soon")
	public String comingSoon() {
		return "FrontJsp/Coming-soon";
	}

	@GetMapping("/front/CusMesFront")
	public String cusMesFront() {
		return "FrontJsp/CusMesFront";
	}
	//查看留言
	@GetMapping("/front/CusMesFrontView")
	public String cusMesFrontView() {
		return "FrontJsp/CusMesFrontView";
	}
	
	// 預約試喝頁面
//	@GetMapping("/front/Re-Order")
//	public String reOrder() {
//		return "FrontJsp/Re-Order";
//	}

	@GetMapping("/front/Re-Order-oldVersion")
	public String reOrderoldVersion() {
		return "FrontJsp/Re-Order-oldVersion";
	}

	// 預約首頁
	@GetMapping("/front/Re-Order")
	public ModelAndView ReservationStore(ModelAndView mav,
			@RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		Page<ReservationStore> page = ReOrderService.findByPage(pageNumber);

		mav.getModel().put("pageOrder1", page);
		mav.setViewName("FrontJsp/Re-Order"); // 目標jsp路徑

		return mav;
	}

	@GetMapping("/front/Reservation")
	public String reservation() {
		return "FrontJsp/Reservation";
	}

	@GetMapping("/front/Shop-cart")
	public String shopCart() {
		return "FrontJsp/Shop-cart";
	}

	@GetMapping("/front/Shop-details")
	public String shopdetails() {
		return "FrontJsp/Shop-details";
	}

	@GetMapping("/front/Shop-fullwidth-grid")
	public String shopFullWidthGrid() {
		return "FrontJsp/Shop-fullwidth-grid";
	}

	@GetMapping("/front/Shop-order-tracking")
	public String shopOrderTracking() {
		return "FrontJsp/Shop-order-tracking";
	}

	@GetMapping("/front/ex")
	public String ex() {
		return "FrontJsp/複製用";
	}
}
