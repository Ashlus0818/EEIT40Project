package com.eeit40.springbootproject.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.eeit40.springbootproject.loginTest.AppUser;

//購物車
@Entity
@Table(name = "ShopCart")
public class ShopCart {

	public ShopCart() {
	}


	public ShopCart(Integer id, AppUser appUser, ShopInventory shopInventory, Integer quantity) {
		super();
		this.id = id;
		this.appUser = appUser;
		this.shopInventory = shopInventory;
		this.quantity = quantity;
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@ManyToOne
	@JoinColumn(name = "appUserId")
	private AppUser appUser;

	@ManyToOne
	@JoinColumn(name = "shopInventoryId")
	private ShopInventory shopInventory;

	@Column(name = "quantity")
	private Integer quantity;

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public AppUser getAppUser() {
		return appUser;
	}


	public void setAppUser(AppUser appUser) {
		this.appUser = appUser;
	}


	public ShopInventory getShopInventory() {
		return shopInventory;
	}


	public void setShopInventory(ShopInventory shopInventory) {
		this.shopInventory = shopInventory;
	}


	public Integer getQuantity() {
		return quantity;
	}


	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}


	@Override
	public String toString() {
		return "ShopCart [id=" + id + ", appUser=" + appUser + ", shopInventory=" + shopInventory + ", quantity="
				+ quantity + "]";
	}
	
	

}