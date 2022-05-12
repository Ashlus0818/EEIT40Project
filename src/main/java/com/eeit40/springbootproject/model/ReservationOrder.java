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
	private Integer orderId;

	@Column(name = "orderMemberEmail")
	private String orderMemberEmail;

	@Column(name = "orderStoreName")
	private String orderStoreName;
	
	@Column(name = "orderStorePop")
	private Integer orderStorePop;

	@Column(name = "orderDate")
	private String orderDate;

	@Column(name = "orderTime")
	private String orderTime;

	@Column(name = "orderWine")
	private String orderWine;

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

	public Integer getOrderId() {
		return orderId;
	}


	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}


	public String getOrderMemberEmail() {
		return orderMemberEmail;
	}

	public void setOrderMemberEmail(String orderMemberEmail) {
		this.orderMemberEmail = orderMemberEmail;
	}

	public String getOrderStoreName() {
		return orderStoreName;
	}

	public void setOrderStoreName(String orderStoreName) {
		this.orderStoreName = orderStoreName;
	}

	public Integer getOrderStorePop() {
		return orderStorePop;
	}

	public void setOrderStorePop(Integer orderStorePop) {
		this.orderStorePop = orderStorePop;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}

	public String getOrderWine() {
		return orderWine;
	}

	public void setOrderWine(String orderWine) {
		this.orderWine = orderWine;
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

	@Override
	public String toString() {
		return "ReservationOrder [orderId=" + orderId + ", orderMemberEmail=" + orderMemberEmail + ", orderStoreName="
				+ orderStoreName + ", orderStorePop=" + orderStorePop + ", orderDate=" + orderDate + ", orderTime="
				+ orderTime + ", orderWine=" + orderWine + ", createdAt=" + createdAt + ", modifiedAt=" + modifiedAt
				+ "]";
	}

	


	


}
