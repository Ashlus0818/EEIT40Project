package com.eeit40.springbootproject.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="BackSchedule")
public class BackSchedule {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private Integer id;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="fk_member_id")
	private Member empid;
	
	@Column(name="absentDate")
	private Date absentDate;

	public BackSchedule() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Member getEmpid() {
		return empid;
	}

	public void setEmpid(Member empid) {
		this.empid = empid;
	}

	public Date getAbsentDate() {
		return absentDate;
	}

	public void setAbsentDate(Date absentDate) {
		this.absentDate = absentDate;
	}
	
	
}
