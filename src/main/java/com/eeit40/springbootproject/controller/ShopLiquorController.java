package com.eeit40.springbootproject.controller;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

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

@RestController
public class ShopLiquorController {
	
	@Autowired
	private ShopLiquorRepository dao;
	
	@Autowired
	private ShopLiquorService slService;
	
		
	////////////////////////////////////////////////////////
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
		return "redirect:/ShopLiquor";
	}
	
	@GetMapping(value = "/AddLiquor")
	public ModelAndView AddLiquor(ModelAndView mav) {
		ShopLiquor sl = new ShopLiquor();
		mav.getModel().put("backliquor", sl);
		return mav;
	}
	
	@PostMapping(value = "/AddLiquor")
	public ModelAndView insertLiquor(ModelAndView mav,@Valid @ModelAttribute(name = "liquor") ShopLiquor sliquor,BindingResult br) {
		
		mav.setViewName("addLiquor");
		
		if(!br.hasErrors()) {
			slService.insert(sliquor);
			ShopLiquor sl = new ShopLiquor();
			mav.getModel().put("workLiquor", sl);
		}
		return mav;
	}
	
	@GetMapping("/EditShopLiquor")
	public String editLiquor(Model model, @RequestParam(name = "liquorId") Integer liquorId) {
		ShopLiquor sl = slService.findByliquorId(liquorId);
		model.addAttribute("ShopLiquor",sl);
		
		return "ShopLiquor";
	}
	
	@PostMapping("/EditShopLiquor")
	public ModelAndView editLiquor(ModelAndView mav,@Valid @ModelAttribute(name = "liquor") ShopLiquor sliquor,BindingResult br) {
		
		mav.setViewName("EditShopLiquor");
		
		if(!br.hasErrors()) {
			slService.insert(sliquor);
			mav.setViewName("redirect:/ShopLiquor");
		}
		return mav;
	}
	
	@GetMapping("DeleteLiquor")
	public ModelAndView deleteLiquor(ModelAndView mav, @RequestParam(name = "liquorId") Integer liquorId){
		slService.deleteByliquorId(liquorId);
		
		mav.setViewName("redirect:/backliquor");
		
		return mav;
	}
}