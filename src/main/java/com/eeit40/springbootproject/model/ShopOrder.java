package com.eeit40.springbootproject.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.servlet.annotation.MultipartConfig;

import org.springframework.format.annotation.DateTimeFormat;

//訂單
@MultipartConfig
@Entity
@Table(name = "ShopOrder")

public class ShopOrder {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JoinColumn(name = "fk_ShopLiquor_id")
	private Integer id;
	
	@Column(name = "uName")
	private String uName;
	
	@JoinColumn(name = "fk_ShopLiquor_pName")
	private String pName;
	
	@Column(name = "img")
	private String img;
	
	@Column(name = "quantity")
	private Integer quantity;
	
	@DateTimeFormat(pattern ="yyyy/MM/dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "date")
	private Date date;
	
	public ShopOrder() {}
	
	
	

	public ShopOrder(Integer id, String uName, String pName, String img, Integer quantity, Date date) {
		super();
		this.id = id;
		this.uName = uName;
		this.pName = pName;
		this.img = img;
		this.quantity = quantity;
		this.date = date;
	}




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

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
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
	
	
	
}