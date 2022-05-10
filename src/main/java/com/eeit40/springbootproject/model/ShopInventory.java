package com.eeit40.springbootproject.model;
//庫存

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
import javax.servlet.annotation.MultipartConfig;

@Entity
@Table(name = "ShopInventory")
@MultipartConfig
public class ShopInventory {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JoinColumn(name = "fk_ShopLiquor_id")
	private Integer id;
	
	@Column(name="iName")
	private String iName;
	
	@Column(name="iImg")
	private String iImg;
	
	@Column(name = "iPlace")
	private String iPlace;
	
	@Column(name = "iprice")
	private String iprice;
	
	@Column(name = "category")
	private String category;
	
	
	public ShopInventory() {}

	
	
	
	public ShopInventory(String iName, String iImg, String iPlace, String iprice) {
		super();
		this.iName = iName;
		this.iImg = iImg;
		this.iPlace = iPlace;
		this.iprice = iprice;
	}




	public ShopInventory(Integer id, String iName, String iImg, String iPlace, String iprice) {
		super();
		this.id = id;
		this.iName = iName;
		this.iImg = iImg;
		this.iPlace = iPlace;
		this.iprice = iprice;
	}
	
	
	
	


	public ShopInventory(String iName, String iImg, String iPlace, String iprice, String category) {
		super();
		this.iName = iName;
		this.iImg = iImg;
		this.iPlace = iPlace;
		this.iprice = iprice;
		this.category = category;
	}




	public ShopInventory(Integer id, String iName, String iImg, String iPlace, String iprice, String category) {
		super();
		this.id = id;
		this.iName = iName;
		this.iImg = iImg;
		this.iPlace = iPlace;
		this.iprice = iprice;
		this.category = category;
	}




	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getiName() {
		return iName;
	}


	public void setiName(String iName) {
		this.iName = iName;
	}


	public String getiImg() {
		return iImg;
	}


	public void setiImg(String iImg) {
		this.iImg = iImg;
	}


	public String getiPlace() {
		return iPlace;
	}


	public void setiPlace(String iPlace) {
		this.iPlace = iPlace;
	}


	public String getIprice() {
		return iprice;
	}


	public void setIprice(String iprice) {
		this.iprice = iprice;
	}



	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}
	
	
	
}