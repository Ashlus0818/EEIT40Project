package com.eeit40.springbootproject.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.servlet.annotation.MultipartConfig;


//購物車
@Entity
@Table(name="ShopCart")
@MultipartConfig
public class ShopCart {
	
	
	public ShopCart() {
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@Column(name = "cName")
	private String cName;
	
	@Column(name = "img")
	private byte[] img;
	
	@Column(name = "price")
	private String price;
	
	@Column(name = "quantity")
	private Integer quantity;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public byte[] getImg() {
		return img;
	}

	public void setImg(byte[] img) {
		this.img = img;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public ShopCart(Integer id, String cName, byte[] img, String price, Integer quantity) {
		super();
		this.id = id;
		this.cName = cName;
		this.img = img;
		this.price = price;
		this.quantity = quantity;
	}
	
}
