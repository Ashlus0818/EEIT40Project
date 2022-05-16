package com.eeit40.springbootproject.controller.front;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.loginTest.AppUser;
import com.eeit40.springbootproject.loginTest.AppUserAuthority;
import com.eeit40.springbootproject.loginTest.AppUserAuthorityRepository;
import com.eeit40.springbootproject.loginTest.AppUserRepository;
import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.model.ReservationStore;
import com.eeit40.springbootproject.model.ShopCart;
import com.eeit40.springbootproject.model.ShopInventory;
import com.eeit40.springbootproject.service.CusMesFrontService;
import com.eeit40.springbootproject.service.ReservationOrderService;
import com.eeit40.springbootproject.service.ShopCartService;
import com.eeit40.springbootproject.service.ShopInventoryService;

@Controller
public class PageControllerFront {

	@Autowired
	private ReservationOrderService ReOrderService;

	@Autowired
	private CusMesFrontService cusmesfrontservice;

	@Autowired
	private ShopInventoryService siService;

	@Autowired
	private ShopCartService scService;

	@Autowired
	private AppUserRepository aDao;
	
	@GetMapping("/front/login")
	public String login() {
		return "FrontJsp/FrontLogin";
	}

	// 前臺首頁
	@GetMapping("/front")
	public String front() {
		return "FrontJsp/index";
	}
	
	@PostMapping("/front/afterfrontlogin")
	public String afterfrontlogin() {
		return "/front";
	}
	
	@GetMapping("/front/registorPage")
	public String registorPage(Model model) {
		AppUser newUser = new AppUser();
		model.addAttribute("newUser", newUser);
		return "/FrontJsp/registorPage";
	}

	@Autowired
	AppUserAuthorityRepository appUserAuthorityRepository;
	@PostMapping("/front/registorNewUser")
	public String registorNewUser(@RequestParam("username")String username,
			@RequestParam("password")String password,
			@RequestParam("userBirth")String userBirth,
			@RequestParam("userGender")String userGender,
			@RequestParam("userAddress")String userAddress,
			@RequestParam("userPhone")String userPhone) {
		AppUserAuthority appUserAuthority = appUserAuthorityRepository.getById(3);
		String encodePwd = new BCryptPasswordEncoder().encode(password);
		AppUser newUser = new AppUser(appUserAuthority, username, encodePwd
				, userPhone, userAddress, userGender, userBirth, new Date(), new Date());
		aDao.save(newUser);
		return "/FrontJsp/index";
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
//	//查看留言
//	@GetMapping("/front/CusMesFrontView")
//	public String cusMesFrontView() {
//		return "FrontJsp/CusMesFrontView";
//	}

	@GetMapping("/front/CusMesFrontView")
	public ModelAndView cusMesFrontView(ModelAndView mav,
			@RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		Page<CustomerMessage> cpage = cusmesfrontservice.findByPage(pageNumber);

		mav.getModel().put("cpage", cpage);
		mav.setViewName("FrontJsp/CusMesFrontView");

		return mav;
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
	
	
	//購物車頁面
	@GetMapping("/front/Shop-cart")
	public String shopCart(HttpSession session, @RequestParam(name = "productId") Integer productId,
			@RequestParam(name = "quantity") Integer quantity) {
		System.out.println("AAAAAAAAAAA"+productId+",,"+quantity);

//		session.getAttribute("username");
//		AppUser user = new AppUser(,"admin@gmail.com","1234");
		Optional<AppUser> bean = aDao.findById(2);
		AppUser user = bean.get();
		System.out.println(productId);
	
		ShopInventory siBean = new ShopInventory(productId);
		scService.insertProductToCart(siBean, user, quantity);
		
		return "redirect:/front/Shop-fullwidth-grid";
	}
	
	//購物車
	@GetMapping("/front/showCartList")
	public ModelAndView getAllproduct(ModelAndView mav) {
	List<ShopCart> list = scService.findAllCart();
	mav.getModel().put("myList", list);

	mav.setViewName("FrontJsp/Shop-cart");
	return mav;
	}
	
	
	//商品詳細頁面
	@GetMapping("/front/Shop-details")
	public ModelAndView shopdetails(@RequestParam(name = "liquorId") String myLiquorId, ModelAndView mav) {

		ShopInventory iBean = siService.findByinventoryId(Integer.valueOf(myLiquorId));
		mav.getModel().put("liquorDetial", iBean);
		mav.setViewName("FrontJsp/Shop-details");

		return mav;
	}
	
	//所有商品
	@GetMapping("/front/Shop-fullwidth-grid")
	public ModelAndView shopFullWidthGrid(ModelAndView mav) {
		List<ShopInventory> inventortyList = siService.findAllinventory();
		mav.getModel().put("inventortyList", inventortyList);
		mav.setViewName("FrontJsp/Shop-fullwidth-grid");
		return mav;
	}
	
	//購物車刪除品項
	@GetMapping("/front/delete/shopCartList")
	public String deleteById(ModelAndView mav, @RequestParam("shopcartid") Integer shopcartid) {
		System.out.println(shopcartid);
		scService.deleteByShopCartId(shopcartid);
		System.out.println("finidsh");
		return "redirect:/front/showCartList";
	}

	@GetMapping("/front/Shop-order-tracking")
	public String shopOrderTracking() {
		return "FrontJsp/Shop-order-tracking";
	}

	@GetMapping("/front/ex")
	public String ex() {
		return "FrontJsp/複製用";
	}

	@GetMapping("/front/ForumFrontAddpost")
	public String forumFrontAddpost() {
		return "FrontJsp/ForumFrontAddpost";
	}
}
