package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ReservationDepartment")
public class ReservationDepartment {

	@Id
	@Column(name = "storeDepartmentNumber")
	private Integer storeDepartmentNumber;
	
	@Column(name = "storeName")
	private String storeName;
	
	@Column(name = "storeDepartmentLocalSector")
	private String storeDepartmentLocalSector;
	
	
	public ReservationDepartment() {
	}

}
