package com.eeit40.springbootproject.dto;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;

public class CusMesDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@JsonProperty("cusname")
	private String cusname;

	@JsonProperty("cusemail")
	private String cusemail;
	
	@JsonProperty("cusquest")
	private String cusquest;

	@JsonProperty("custext")
	private String custext;
	
	public CusMesDto() {
	}

	public String getCusname() {
		return cusname;
	}

	public void setCusname(String cusname) {
		this.cusname = cusname;
	}

	public String getCusemail() {
		return cusemail;
	}

	public void setCusemail(String cusemail) {
		this.cusemail = cusemail;
	}

	public String getCusquest() {
		return cusquest;
	}

	public void setCusquest(String cusquest) {
		this.cusquest = cusquest;
	}

	public String getCustext() {
		return custext;
	}

	public void setCustext(String custext) {
		this.custext = custext;
	}

	
	
	

}