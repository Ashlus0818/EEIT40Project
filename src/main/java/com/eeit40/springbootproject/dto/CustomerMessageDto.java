package com.eeit40.springbootproject.dto;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;

public class CustomerMessageDto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	
	public CustomerMessageDto() {
		
	}
	
	@JsonProperty("Custname")
	private String Custname;
	
	@JsonProperty("Custemail")
	private String Custemail;
	
	@JsonProperty("Custquest")
	private String Custquest;
	
	@JsonProperty("Custtext")
	private String Custtext;


	public String getCustname() {
		return Custname;
	}

	public void setCustname(String custname) {
		Custname = custname;
	}

	public String getCustemail() {
		return Custemail;
	}

	public void setCustemail(String custemail) {
		Custemail = custemail;
	}

	public String getCustquest() {
		return Custquest;
	}

	public void setCustquest(String custquest) {
		Custquest = custquest;
	}

	public String getCusttext() {
		return Custtext;
	}

	public void setCusttext(String custtext) {
		Custtext = custtext;
	}
	
	
	
}
