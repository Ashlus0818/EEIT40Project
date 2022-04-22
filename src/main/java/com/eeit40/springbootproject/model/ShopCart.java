package com.eeit40.springbootproject.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
	@JoinColumn(name = "fk_ShopLiquor_id")
	private Integer id;
	
	@JoinColumn(name = "fk_ShopLiquor_cName")
	private String cName;
	
	
	//url路徑
	@Column(name = "img")
	private String img;
	
	@Column(name = "price")
	private String price;
	
	@Column(name = "quantity")
	private Integer quantity;

	
		public ShopCart(Integer id, String cName, String img, String price, Integer quantity) {
		super();
		this.id = id;
		this.cName = cName;
		this.img = img;
		this.price = price;
		this.quantity = quantity;
	}

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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
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
	
	
	
}