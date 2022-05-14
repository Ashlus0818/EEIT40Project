package com.eeit40.springbootproject.controller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.eeit40.springbootproject.model.CusMesBackMail;
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
	public ModelAndView findByPage(ModelAndView mav, @RequestParam(name = "p", defaultValue = "1") Integer pageNumber) {
		System.out.print(pageNumber);
		Page<CustomerMessage> list = cmseService.findByPage(pageNumber);
		mav.getModel().put("list", list);
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

	// 新增留言＋送信
	@PostMapping("/message/addCusMessage")
	public ModelAndView AddCusMessage(ModelAndView mav,
			@Valid @ModelAttribute(name = "CustomerMessages") CustomerMessage cusmes, BindingResult br,
			HttpServletRequest request, Model model) throws MessagingException {

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
		helper.setText("這裏是酒窖網的客服，感謝您此次的咨詢"
				+ "<br>關於您咨詢的問題，我們會及時加以確認。"
				+"<br>我們是依序確認郵件，可能需要幾小時才能回復您，請您知悉。"
				+"<br>根據您詢問的問題，我們可能無法給您滿意的答復，請您諒解。"
				+"<br>我們將會保密您的個人資料及郵件內容，不會讓第三方知道。"
				+ "<br>"
				+ "<br>"
				+ "感謝您的來信。"
				, html);
//		helper.setText("問題："+"<b>"+cusmes.getMessageQuest()+"</b><br>"+"回覆:"+"<b>"+cusmes.getMessagetext()+"</b>", html);
		mailSender.send(message);

		model.addAttribute("message", "An HTML email has been sent");

		CustomerMessage cMes = new CustomerMessage();

		mav.getModel().put("CusMes", cMes);
		mav.setViewName("redirect:/front/CusMesFrontView");

		return mav;
	}
//	這裏是怪物彈珠的客服，感謝您此次的咨詢。
//
//	關於您咨詢的問題，我們會及時加以確認。
//
//	我們是依序確認郵件，可能需要幾天時間才能回復您，請您知悉。
//
//	根據您詢問的問題，我們可能無法給您滿意的答復，請您諒解。
//
//	我們將會保密您的個人資料及郵件內容，不會讓第三方知道。
//
//	今後，請您繼續支持怪物彈珠。
//
//	感謝您的來信。
//	我們是怪物彈珠的客服中心。
	// 後台回覆//	@GetMapping("/message/send_html_email")
//	@ResponseBody
//	@PostMapping(value="/message/send")
//	public String sendHTMLEmail(@RequestParam("mailmail") String email
//								,@RequestParam("mailQuest") String mailQuest
//								,@RequestParam("mailMes")String emailToMes,
//			HttpServletRequest request, Model model) throws MessagingException {
//		cmseService.insertmail(new CusMesBackMail(email,mailQuest,emailToMes));
//		String to = email;
//	String quest = mailQuest;
//	String text = emailToMes;
	
	@PostMapping("/message/send")
	public ModelAndView sendEmail(ModelAndView mav,
			@Valid @ModelAttribute(name = "CustomerMail") CusMesBackMail cusmail, BindingResult br,
			HttpServletRequest request, Model model) throws MessagingException {

		cmseService.insertmail(cusmail);
		
		String from = "客服通知信<service.liqer@gmail.com>";
		String to = cusmail.getEmail();
		String quest = cusmail.getMailQuest();
		String text = cusmail.getEmailToMes();
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper = new MimeMessageHelper(message);

		helper.setSubject("關於您反映的問題");
		helper.setFrom(from);
		helper.setTo(to);
		

		boolean html = true;
		helper.setText("感謝您的來信。"
		+"<br>我們是酒窖網的客服中心。"
		+"<br>"
		+"<br>感謝您耐心等候"
		+"回覆:"
		+"<b>"+text
		+"</b>"
		, html);

		mailSender.send(message);

		model.addAttribute("message", "An HTML email has been sent");
		CusMesBackMail cMail = new CusMesBackMail();

		mav.getModel().put("CusMail", cMail);
		mav.setViewName("redirect:/CusMesbacks/findByPage");

		return mav;
	}

	@GetMapping("/EditCustomerMessage")
	public String editMessage(Model model, @RequestParam(name = "messageId") Integer messageId) {
		CustomerMessage cMes = cmseService.findBymessagesId(messageId);
		model.addAttribute("CusMesback", cMes);

		return "EditCustomerMessage";
	}

	@PostMapping("/EditCustomerMessage")
	public ModelAndView editMessage(ModelAndView mav,
			@Valid @ModelAttribute(name = "CustomerMessage") CustomerMessage cusmes, BindingResult br) {

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

		// mav.setViewName("redirect:/CusMesbacks/findByPage");

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
