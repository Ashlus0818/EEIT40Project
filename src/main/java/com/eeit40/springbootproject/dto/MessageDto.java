package com.eeit40.springbootproject.dto;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;

public class MessageDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@JsonProperty("message")
	private String msg;

	@JsonProperty("message2")
	private String msg2;
	
	public MessageDto() {
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public String getMsg2() {
		return msg2;
	}

	public void setMsg2(String msg2) {
		this.msg2 = msg2;
	}
	
	

}