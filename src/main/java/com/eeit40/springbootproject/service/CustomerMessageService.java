package com.eeit40.springbootproject.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.eeit40.springbootproject.dao.CustomerMessageMapper;




@Service
public class CustomerMessageService {
	
	@Autowired
	private CustomerMessageMapper messageMapper;
	/*
	 * 前台
	 */
	private int getAllMessageTexts() {
		if (messageMapper.getMessageManageStatus().equals("True")) {
			int count = messageMapper.getAllMessageTexts();
		}
		int count = messageMapper.getAllMessage();
		return count;
	}

	

	/*
	 * 后台
	 */
	private int getAllMessage() {
		int count = messageMapper.getAllMessage();
		return count;
	}

	
	

	/*
	 * Springboot 事务管理，防止程序报错后 错误数据插入数据库
	 */

	// 单个删除
	@Transactional
	public void deleteMessageId(Integer id) {
		messageMapper.deleteMessageId(id);
	}

	// 批量删除
	@Transactional
	public void deleteManyMessageId(String idList) {
		List idLists = Arrays.asList(idList.split(","));
		idLists.forEach(id -> {
			Integer message_id = Integer.parseInt((String) id);
			messageMapper.deleteMessageId(message_id);
		});
	}

	// 编辑 单个留言审核状态
	@Transactional
	public void updateMessage(Integer messagetext, Integer messageid) {
		messageMapper.updateMessage(messagetext, messageid);
	}

	// 编辑 整个留言审核状态
	@Transactional
	public void updateMessageManageStatus(String message_manage) {
		messageMapper.updateMessageManageStatus(message_manage);
	}

}
