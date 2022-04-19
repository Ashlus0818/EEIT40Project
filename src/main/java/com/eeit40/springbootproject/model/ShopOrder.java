package com.eeit40.springbootproject.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.servlet.annotation.MultipartConfig;

//訂單
@MultipartConfig
@Entity
@Table(name = "ShopOrder")

public class ShopOrder {

	public ShopOrder() {}
	
	private Integer id;
	
	private String uName;
	
	private byte[] img;
	
	private Integer quantity;
	
	private Date date;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public byte[] getImg() {
		return img;
	}

	public void setImg(byte[] img) {
		this.img = img;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public ShopOrder(Integer id, String uName, byte[] img, Integer quantity, Date date) {
		super();
		this.id = id;
		this.uName = uName;
		this.img = img;
		this.quantity = quantity;
		this.date = date;
	}
	
	
	
}
