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
	    @Update("UPDATE message SET message_status = #{message_status} WHERE id = #{id}")
	    void updateMessage(@Param("message_status")Integer message_status,@Param("id")Integer id);
	 	
	 	
	 	
	 	
	 	
	 	
}
