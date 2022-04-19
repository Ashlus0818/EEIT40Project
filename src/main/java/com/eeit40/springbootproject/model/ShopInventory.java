package com.eeit40.springbootproject.model;
//庫存

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.servlet.annotation.MultipartConfig;

@Entity
@Table(name = "ShopInventory")
@MultipartConfig
public class ShopInventory {
	

	
	private Integer id;
	
	private String iName;
	
	private byte[] iImg;
	
	private String iPlace;
	
	private String iprice;
	
	
	public ShopInventory() {}
	

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

	public byte[] getiImg() {
		return iImg;
	}

	public void setiImg(byte[] iImg) {
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

	public ShopInventory(Integer id, String iName, byte[] iImg, String iPlace, String iprice) {
		super();
		this.id = id;
		this.iName = iName;
		this.iImg = iImg;
		this.iPlace = iPlace;
		this.iprice = iprice;
	}
	
	
	
}
