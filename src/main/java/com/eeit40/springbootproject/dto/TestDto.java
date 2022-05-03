package com.eeit40.springbootproject.dto;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;

public class TestDto implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@JsonProperty("name")
	private String name;
	
	@JsonProperty("phone")
	private String phone;

	public TestDto() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
