package com.eeit40.springbootproject.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.dao.ShopLiquorRepository;
import com.eeit40.springbootproject.model.ShopLiquor;
import com.eeit40.springbootproject.service.ShopLiquorService;

@Controller
public class ShopLiquorController {
	
	@Autowired
	private ShopLiquorRepository dao;
	
	@Autowired
	private ShopLiquorService slService;
	
		
	@GetMapping(value = "/ShopLiquor/page")
	public ModelAndView findByPage(ModelAndView mav,@RequestParam(name = "s") Integer pageNumber) {
		
		Page<ShopLiquor> list = slService.findByPage(pageNumber);
		mav.getModel().put("list",list);
		mav.setViewName("ShopLiquor");
		return mav;
	}
	
	@RequestMapping(value = "/ShopLiquor/{liquorId}",method = RequestMethod.DELETE)
	public String deleteByLiquorId(@PathVariable("liquorId") Integer liquorId) {
		dao.deleteById(liquorId);
		return "redirect:/ShopLiquor";//如果成功了救回傳此頁面 redirect要接url
	}
	
	@GetMapping(value = "/AddLiquor")
	public String AddLiquor(@RequestParam(name = "t1") String pName,
			@RequestParam(name = "t2") String Introduce,
			@RequestParam(name = "t3") String place,
			@RequestParam(name = "t4") String price) {
		System.out.println(pName);
		ShopLiquor sl =  new ShopLiquor(pName,Introduce,place,price);
		
		slService.insert(sl);
		return "ShopLiquor";
	}
	
	@PostMapping(value = "/AddLiquor")
	public ModelAndView insertLiquor(ModelAndView mav,@Valid @ModelAttribute(name = "liquor") ShopLiquor sliquor,BindingResult br) {
		System.out.println("bb");
		mav.setViewName("index");//如果有錯誤就回去編輯的頁面
		
		 
		if(!br.hasErrors()) {//如果BindingResult沒有錯
			slService.insert(sliquor);//就做Service的insert方法
			ShopLiquor sl = new ShopLiquor();//實作(呼叫)ShopLiquor
			mav.getModel().put("liquor", sl);//liquor要跟jsp裡modelattribute 的名字一樣
		}
		return mav;
	}
	
	
	
	@GetMapping("/EditShopLiquor")
	public String editLiquor(Model model, @RequestParam(name = "liquorId") Integer liquorId) {
		ShopLiquor sl = slService.findByliquorId(liquorId);//做Service的findByliquorId方法
		model.addAttribute("ShopLiquor",sl);
		
		return "ShopLiquor";
	}
	
	//編輯
	@PostMapping("/EditShopLiquor")
	public ModelAndView editLiquor(ModelAndView mav,@Valid @ModelAttribute(name = "liquor") ShopLiquor sliquor,BindingResult br) { 
															//name跟jsp的ModelAttribute要同名
		mav.setViewName("EditShopLiquor");//如果有錯誤就回去編輯的頁面
		
		
		if(!br.hasErrors()) {//如果沒有問題
			slService.insert(sliquor);//就做Service的insert方法
			mav.setViewName("redirect:/ShopLiquor");//如果成功了救回傳此頁面
		}
		return mav;
	}
	
	@GetMapping("DeleteLiquor")
	public ModelAndView deleteLiquor(ModelAndView mav, @RequestParam(name = "liquorId") Integer liquorId){
		
		slService.deleteByliquorId(liquorId);//做Service的delete方法
		
		mav.setViewName("redirect:/backliquor");//如果成功了救回傳此頁面
		
		return mav;
	}
}