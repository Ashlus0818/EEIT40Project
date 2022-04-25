package com.eeit40.springbootproject.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.eeit40.springbootproject.dao.CustomerMessageRepository;
import com.eeit40.springbootproject.model.CustomerMessage;
import com.eeit40.springbootproject.service.CustomerMessageService;

@RestController
public class CustomerMessageController {
	
	@Autowired
	private CustomerMessageService customerMessageService;
	
	@Autowired
	private CustomerMessageRepository dao;
	
	@GetMapping("/customermes/page/{pageNumber}")
	public List<CustomerMessage> findByPage(@PathVariable Integer pageNumber)
	{
		System.out.print(pageNumber);
		Pageable pgb = PageRequest.of(pageNumber-1, 2,Sort.Direction.DESC,"postID");
		Page<CustomerMessage> page = dao.findAll(pgb);
		List<CustomerMessage> list = page.getContent();
		return list;		
	}
	
	 // 单个删除
    @RequestMapping("/deleteMessageId")
    public Map<String, String> deleteMessageId(Integer id){
    	customerMessageService.deleteMessageId(id);

        Map<String, String> m = new HashMap<>();
        m.put("message", "成功");
        return m;
    }

    // 批量删除
    @RequestMapping("/deleteManyMessageId")
    public Map<String, String> deleteManyMessageId(String idList){
    	customerMessageService.deleteManyMessageId(idList);

        Map<String, String> m = new HashMap<>();
        m.put("message", "成功");
        return m;
    }


    // 编辑 单个留言审核状态
    @RequestMapping("/updateMessage")
    public Map<String, String> updateMessage(Integer messagetext, Integer id){
    	customerMessageService.updateMessage(messagetext,id);

        Map<String, String> m = new HashMap<>();
        m.put("message", "成功");
        return m;
    }


//    // 编辑 整个留言审核状态
//    @RequestMapping("/updateMessageManageStatus")
//    public Map<String, String> updateMessageManageStatus(String message_manage){
//    	customerMessageService.updateMessageManageStatus(message_manage);
//
//        Map<String, String> m = new HashMap<>();
////        m.put("message", "成功");
////        return m;
//    }
}
