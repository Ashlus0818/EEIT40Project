package com.eeit40.springbootproject.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="ReservationStore")
public class ReservationStore {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "storeId")  //建立table時會依據name指定名稱建立
	private Integer storeId;
	
	@Column(name = "storeDepartmentNumber")
	private Integer storeDepartmentNumber;
	
//@OneToOne
//@JoinColumn(name = "fk_storeName")
	@Column(name = "storeName")
	private String storeName;
	
	@Column(name = "storePhone")
	private String storePhone;
	
	@Column(name = "storeAddress")
	private String storeAddress;
		
	@Column(name = "storeOpendate")
	private String storeOpendate;
	
	// Date引入util話,要用@Temporal,表跟資料庫說明我的資料型別要裝什麼(年月日/年月日時分秒...等)
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss") // 年月日時分秒的格式,因為不同資料庫有不同存的格式,例如有些會存到秒數後三位
	@Temporal(TemporalType.TIMESTAMP) // 年月日時分秒
	@Column(name = "createdAt",columnDefinition = "datetime") //預設是datetime2型別,要換datetime型別要改)
	private Date createdAt;  
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss") // 年月日時分秒的格式,因為不同資料庫有不同存的格式,例如有些會存到秒數後三位
	@Temporal(TemporalType.TIMESTAMP) // 年月日時分秒
	@Column(name = "modifiedAt")
	private Date modifiedAt;
	
	

	
	
	
	//storeId自動產生所以不用建構子
	public ReservationStore(Integer storeDepartmentNumber, String storeName, String storePhone, String storeAddress, String storeOpendate, Date createdAt, Date modifiedAt) {
		super();
		this.storeDepartmentNumber = storeDepartmentNumber;
		this.storeName = storeName;
		this.storePhone = storePhone;
		this.storeAddress = storeAddress;
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


	public String getStoreName() {
		return storeName;
	}


	public void setStoreName(String storeName) {
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


	public String getStoreOpendate() {
		return storeOpendate;
	}


	public void setStoreOpendate(String storeOpendate) {
		this.storeOpendate = storeOpendate;
	}


	public Date getCreatedAt() {
		return createdAt;
	}


	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}


	public Date getModifiedAt() {
		return modifiedAt;
	}


	public void setModifiedAt(Date modifiedAt) {
		this.modifiedAt = modifiedAt;
	}

	
	
}
