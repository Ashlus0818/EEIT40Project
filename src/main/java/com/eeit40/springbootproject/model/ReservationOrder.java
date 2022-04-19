package com.eeit40.springbootproject.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ReservationOrder")
public class ReservationOrder {
	
	@Id
	@Column(name="reCustomerName")
	private String reCustomerName;
	
	@Column(name="reCustomerGender")
	private String reCustomerGender;
	
	@Column(name="reCustomerPhone")
	private String reCustomerPhone;
	
	@Column(name="reCustomerEmail")
	private String reCustomerEmail;
	
	@Column(name="storeName")
	private String storeName;
	
	@Column(name="reWine")
	private String reWine;
	
	@Column(name="reDateTime")
	private Date reDateTime;
	
	@Column(name="reservations")
	private String reservations;
	
	public ReservationOrder() {
	}

}
