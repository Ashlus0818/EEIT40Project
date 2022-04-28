package com.eeit40.springbootproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.*;

import com.eeit40.springbootproject.model.CustomerMessage;





@Mapper
public interface CustomerMessageMapper {

	
	// 增加留言
	 	@Insert(" INSERT INTO CustomerMessage(messageName,messageEmail,messageQuest,messagetext) VALUE(#{messageName},#{messageEmail},#{messageQuest},#{messagetext})")
	    void MessageInsert(@Param("messageName") String messageName,
	                       @Param("messageEmail") String messageEmail,
	                       @Param("messageQuest") String messageQuest,
	                       @Param("messagetext") String messagetext);
	 
	 // 前台 分页查询 message_status = 1 的数据
	    /*
	        pageSize
	        totalSize
	     */
	    // 查询前台总页数 每页20条
	    @Select("SELECT count(*) from CustomerMessage where messagetext = 1")
	    int getAllMessageTexts();

	    // 前台 分页查询 Status = 1
	    // select * from table LIMIT 5,10
	    @Select("SELECT * from CustomerMessage where messagetext = 1 order by id desc LIMIT #{begin},#{end}")
	    List<CustomerMessage> getMessageTexts(@Param("begin")Integer begin, @Param("end")Integer end);

	    // 前台分页管理 不审核直接显示
	    @Select("SELECT message_manage from message_manage where id = 1")
	    String getMessageManageStatus();

	    // 管理 前台留言是否未审核 1是开启审核，0是关闭审核
	    @Select("update message_manage SET message_manage = #{message_manage} where id = 1")
	    void updateMessageManageStatus(@Param("message_manage")String message_manage);

	 
	 
	 /*
     	後台
	  */
	 // 查尋後台總頁數 每页20条
	 	@Select("SELECT count(*) from CustomerMessage")
	 	int getAllMessage();
	 
	 	 // 後台 分頁查询
	    @Select("SELECT * from CustomerMessage order by id desc LIMIT #{begin},#{end}")
	    List<CustomerMessage> getMessage(@Param("begin")Integer begin, @Param("end")Integer end);

	    // 單個删除
	    @Delete("DELETE FROM CustomerMessage WHERE messageId = #{messageId}")
	    void deleteMessageId(@Param("messageId")Integer messageId);
	    
	    // 编辑
	    // update 表名 set 字段名1＝值1，... Where 關键字＝值
	    @Update("UPDATE CustomerMessage SET messagetext = #{messagetext} WHERE id = #{messageid}")
	    void updateMessage(@Param("messagetext")Integer messagetext,@Param("id")Integer messageid);
	 	
	 	//删除 按id删除
	    @Delete("delete from student where id = #{id}")
	    int deleteById(@Param("id") int id);

	
	 	
	 	
	 	
	 	
}
