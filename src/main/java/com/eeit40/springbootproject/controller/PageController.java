package com.eeit40.springbootproject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.loginTest.AppUserService;
import com.eeit40.springbootproject.model.BackTaskes;
import com.eeit40.springbootproject.model.ReservationMessageTest;
import com.eeit40.springbootproject.model.ReservationStore;
import com.eeit40.springbootproject.model.ShopInventory;
import com.eeit40.springbootproject.service.BackTaskesService;
import com.eeit40.springbootproject.service.CustomerMessageService;
import com.eeit40.springbootproject.service.ReservationMessageTestService;
import com.eeit40.springbootproject.service.ReservationStoreService;
import com.eeit40.springbootproject.service.ShopInventoryService;
import com.sun.net.httpserver.HttpsParameters;

@Controller
public class PageController {
	@Autowired
	private AppUserService aService;
	
	@Autowired
	private BackTaskesService bService;

	@Autowired
	private CustomerMessageService cums;

	@Autowired
	private ReservationStoreService ReStoreService;

	@Autowired
	private ReservationMessageTestService messageService;

	@Autowired
	private ShopInventoryService siService;

	@GetMapping("/")
	public String indexGet(HttpSession session) {
		System.out.println(session.getAttribute("status"));
		System.out.println("/");
		session.setAttribute("authorityNum1", aService.find1("1"));
		session.setAttribute("authorityNum2", aService.find1("2"));
		session.setAttribute("authorityNum3", aService.find1("3"));
		session.setAttribute("storeNum1", ReStoreService.find1(100));
		session.setAttribute("storeNum2", ReStoreService.find1(200));
		session.setAttribute("pieNum1", cums.find1());
		session.setAttribute("pieNum2", cums.find2());
		session.setAttribute("pieNum3", cums.find3());
		return "index";
	}

	@PostMapping("/login/front")
	public String loginFront(@RequestParam("username")String username, @RequestParam("password")String password){
		return "redirect:/front/index";
	}
	@PostMapping("/login/back")
	public String loginBack(@RequestParam("username")String username, @RequestParam("password")String password){
		return "redirect:/";
	}
	@PostMapping("/index")
	public String index(HttpSession session) {
		System.out.println(session.getAttribute("status")+"session.getAttribute()");
		System.out.println("/index");
		return "index";
	}

	@GetMapping("/BackLogin")
	public String backLogin() {
		System.out.println("/BackLogin");
		return "BackLogin";
	}

	@PostMapping("/loginFail")
	public String loginFain() {
		System.out.println("/loginFail");
//		request.setAttribute("message", "login fail");
		return "/loginFail";
	}

	@GetMapping("/backTask")
	public ModelAndView BackTask(ModelAndView mav, @RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		System.out.println("/backTask");
		Page<BackTaskes> page = bService.findByPage(pageNumber);
		mav.getModel().put("page", page);
		mav.setViewName("backTask");
		return mav;
	}

	@GetMapping("/BackInsert")
	public String BackInsert() {
		return "BackInsert";
	}

	@GetMapping("/post")
	public String forumpost() {
		return "Forumpost";
	}

//	@GetMapping("/backStage/Re-show-a-store")
//	public String ReShowAstore() {
//		return "Re-show-a-store";
//	}

	// ??????????????????
	// ??????myapp?????????application.properties
	// http://localhost:8080/myapp/ReMsgTest
	// ????????????msg????????????????????????????????????(??????)-->??????indexReMsgTest.jsp-->?????????default.jsp-->
	// ??????default???????????????????????????add???view
	@GetMapping("/ReMsgTest")
	public String welcomIndex() {
		return "indexReMsgTest";
	}

	// ??????????????????
	// 3/31?????? 10?????? 1:00:00 & 1:05:00??????
	// ??????ReservationMsgTestController???@PostMapping("/message/add"),??????get ??????post
	@GetMapping("/message/add")
	public ModelAndView addMessagePage(ModelAndView mav) {

		// ??????formform,()????????????????????????
		// new????????????message?????????model??????
		// put?????????key(??????),value(??????)??????-->key???modelAttribute???????????????,value??????new??????message
		// ?????????getModel(???????????????model??????),????????????mav
		// put?????????????????????ModelAndView???Model??????
		ReservationMessageTest message = new ReservationMessageTest();
		mav.getModel().put("reservationMessageTest", message);

		ReservationMessageTest lastMag = messageService.getLastest();
		mav.getModel().put("lastMessage", lastMag);

		// ModelAndView??????view?????????(ReserveAddMsgTest)
		mav.setViewName("ReserveAddMsgTest");
		return mav;
		// ????????????mav??????model?????????message,view?????????view?????????(jsp??????)
		// return mav????????????view?????????,????????????????????????model

	}

	// ??????????????????
	// ()??????mav????????? pagenumber???????????? ???????????????????????????@RequestParam name=p p???page??????
	// defaultValue=??????????????????
	@GetMapping("/message/viewMessages")
	public ModelAndView viewMessages(ModelAndView mav,
			@RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		Page<ReservationMessageTest> page = messageService.findByPage(pageNumber);

		mav.getModel().put("page", page);
		mav.setViewName("viewMessages");

		return mav;
	}

	// ReservationStore.jsp showAll + ReservationStoreService(store showAll)
	@GetMapping("/backstage/ReservationStore")
	public ModelAndView ReservationStore(ModelAndView mav,
			@RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		Page<ReservationStore> page = ReStoreService.findByPage(pageNumber);

		mav.getModel().put("pageStore1", page);
		mav.setViewName("ReservationStore"); // ??????jsp??????

		return mav;
	}

	@GetMapping("/CusMesback")
	public String backmessage() {
		return "CusMesback";
	}

	@GetMapping("/addShopLiquor")
	public String addShopLiquor() {
		return "ShopLiquor";
	}

	@GetMapping("/addShopOrder")
	public String addShopOrder() {
		return "ShopOrder";
	}

	@GetMapping("/addShopCart")
	public String addShopCart() {
		return "ShopCart";
	}

//	@GetMapping("/addShopInventory")
//	public String ShopInventory() {
//		return "ShopInventory";
//	}
	@GetMapping("/addShopInventory")
	public ModelAndView ShopInventory(ModelAndView mav,
			@RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		Page<ShopInventory> page = siService.findByPage(pageNumber);

		mav.getModel().put("page", page);
		mav.setViewName("ShopInventory");
		return mav;
	}
		
	

}
