package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ReservationStore")
public class ReservationStore {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "storeId")
	private Integer storeId;
	
	@Column(name = "storeDepartmentNumber")
	private Integer storeDepartmentNumber;
	
	@OneToOne
	@JoinColumn(name = "fk_storeName")
	private ReservationDepartment storeName;
	
	@Column(name = "storePhone")
	private String storePhone;
	
	@Column(name = "storeAddress")
	private String storeAddress;
	
	@Column(name = "storeFax")
	private String storeFax;
	
	@Column(name = "storeOpendate")
	private String storeOpendate;
	
	@Column(name = "createdAt")
	private String createdAt;  //datetime用string接
	
	@Column(name = "modifiedAt")
	private String modifiedAt;
	
	
	
	//storeId自動產生所以不用建構子
	public ReservationStore(Integer storeDepartmentNumber, ReservationDepartment storeName, String storePhone, String storeAddress,
			String storeFax, String storeOpendate, String createdAt, String modifiedAt) {
		super();
		this.storeDepartmentNumber = storeDepartmentNumber;
		this.storeName = storeName;
		this.storePhone = storePhone;
		this.storeAddress = storeAddress;
		this.storeFax = storeFax;
		this.storeOpendate = storeOpendate;
		this.createdAt = createdAt;
		this.modifiedAt = modifiedAt;
	}


	public ReservationStore() {
	}


	public Integer getStoreId() {
		return storeId;
	}


	public void setStoreId(Integer storeId) {
		this.storeId = storeId;
	}


	public Integer getStoreDepartmentNumber() {
		return storeDepartmentNumber;
	}


	public void setStoreDepartmentNumber(Integer storeDepartmentNumber) {
		this.storeDepartmentNumber = storeDepartmentNumber;
	}


	public ReservationDepartment getStoreName() {
		return storeName;
	}


	public void setStoreName(ReservationDepartment storeName) {
		this.storeName = storeName;
	}


	public String getStorePhone() {
		return storePhone;
	}


	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}


	public String getStoreAddress() {
		return storeAddress;
	}


	public void setStoreAddress(String storeAddress) {
		this.storeAddress = storeAddress;
	}


	public String getStoreFax() {
		return storeFax;
	}


	public void setStoreFax(String storeFax) {
		this.storeFax = storeFax;
	}


	public String getStoreOpendate() {
		return storeOpendate;
	}


	public void setStoreOpendate(String storeOpendate) {
		this.storeOpendate = storeOpendate;
	}


	public String getCreatedAt() {
		return createdAt;
	}


	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}


	public String getModifiedAt() {
		return modifiedAt;
	}


	public void setModifiedAt(String modifiedAt) {
		this.modifiedAt = modifiedAt;
	}

	
	
}
