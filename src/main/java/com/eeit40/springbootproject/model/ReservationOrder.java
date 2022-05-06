package com.eeit40.springbootproject.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "ReservationOrder")
public class ReservationOrder {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "orderId")
	private String orderId;

	@Column(name = "orderMemberEmail")
	private String reCustomerGender;

	@Column(name = "orderStoreName")
	private String reCustomerPhone;

	@Column(name = "orderDate")
	private String reCustomerEmail;

	@Column(name = "orderTime")
	private String storeName;

	@Column(name = "orderWine")
	private String reWine;

	// Date引入util話,要用@Temporal,表跟資料庫說明我的資料型別要裝什麼(年月日/年月日時分秒...等)
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss") // 年月日時分秒的格式,因為不同資料庫有不同存的格式,例如有些會存到秒數後三位
	@Temporal(TemporalType.TIMESTAMP) // 年月日時分秒
	@Column(name = "createdAt", columnDefinition = "datetime") // 預設是datetime2型別,要換datetime型別要改)
	private Date createdAt;

	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss") // 年月日時分秒的格式,因為不同資料庫有不同存的格式,例如有些會存到秒數後三位
	@Temporal(TemporalType.TIMESTAMP) // 年月日時分秒
	@Column(name = "modifiedAt", columnDefinition = "datetime")
	private Date modifiedAt;

	public ReservationOrder() {
	}

}
