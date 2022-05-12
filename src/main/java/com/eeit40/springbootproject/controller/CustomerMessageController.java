package com.eeit40.springbootproject.controller;


import java.util.List;
//import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.BackTaskes;
import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.service.CustomerMessageService;

@Controller
public class CustomerMessageController {
	
	private CustomerMessage cusmodel;
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private CustomerMessageService cmseService;
	
	@GetMapping("/CusMesbacks/findByPage")
	public ModelAndView findByPage(ModelAndView mav,@RequestParam(name="p", defaultValue = "1") Integer pageNumber)
	{
		System.out.print(pageNumber);
		Page<CustomerMessage> list = cmseService.findByPage(pageNumber);
		mav.getModel().put("list",list );
		mav.setViewName("CusMesback");
		System.out.println(list);
		return mav;
	
	}
	
//================================================================	
	@GetMapping("/message/AddCusMessage")
	public ModelAndView AddCustomerMessage(ModelAndView mav) {
		CustomerMessage cusm = new CustomerMessage();
		mav.getModel().put("cusmes", cusm);

		
		return mav;
	}
	
	
	@PostMapping("/message/addCusMessage")
	public ModelAndView AddCusMessage(ModelAndView mav,@Valid @ModelAttribute(name="CustomerMessages") CustomerMessage cusmes , BindingResult br,HttpServletRequest request,Model model) throws MessagingException {
		
		cmseService.insert(cusmes);
		String from = "客服通知信<service.liqer@gmail.com>";
		String to = cusmes.getMessageEmail();
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);
		
		helper.setFrom(from);
		helper.setTo(to);
		helper.setSubject("感謝您留言");
//		message.setText("將在48小時內回覆您");
		boolean html = true;
		helper.setText("<b>您好</b>,<br><i>將在48小時內回覆您</i>", html);

		mailSender.send(message);
		
		model.addAttribute("message", "An HTML email has been sent");

		
		CustomerMessage cMes = new CustomerMessage();
		
		
		mav.getModel().put("CusMes", cMes);
		mav.setViewName("redirect:/front/CusMesFrontView");
		
		
		return mav;
	}
//=================================================================
	@GetMapping("/EditCustomerMessage")
	public String editMessage(Model model, @RequestParam(name = "messageId") Integer messageId) {
		CustomerMessage cMes = cmseService.findBymessagesId(messageId);
		model.addAttribute("CusMesback", cMes);

		return "EditCustomerMessage";
	}
	
	@PostMapping("/EditCustomerMessage")
	public ModelAndView editMessage(ModelAndView mav, @Valid @ModelAttribute(name = "CustomerMessage") CustomerMessage cusmes,
			BindingResult br) {

		mav.setViewName("EditCustomerMessage");

		if (!br.hasErrors()) {
			cmseService.insert(cusmes);
			mav.setViewName("redirect:/CusMesFrontView");
		}

		return mav;

	}
//====================================================================	
	@GetMapping("CusMesbacks/DeleteMessage")
	public String deleteMessage(ModelAndView mav, @RequestParam(name = "messageId") Integer messageId) {
		
		cmseService.deleteBymesId(messageId);

		//mav.setViewName("redirect:/CusMesbacks/findByPage");

		return "redirect:/CusMesbacks/findByPage";
	}
	@GetMapping("/DeleteMesssage")
	public ModelAndView deleteMes(ModelAndView mav, @RequestParam(name = "messageId") Integer messageId) {
		cmseService.deleteBymesId(messageId);
		mav.setViewName("redirect:/CusMesFrontView");
		return mav;
	}
	
	@PostMapping("CusMesbacks/delete")
	public String deleteById(ModelAndView mav, @RequestParam("num") Integer id) {
		boolean flag = cmseService.deleteById1(id);
		System.out.print(id);
		return "redirect:/CusMesback";
	}
//=========================================================================
	

}
