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
@Table(name="Taskes")
public class BackTaskes {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private Integer id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="activeDate")
	private Date activeDate;
	
	@Column(name="deadline")
	private Date deadline;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="fk_member_email")
	private Member createdBy;
	
	@Column(name="pdf")
	private byte[] pdf;
	
	@Column(name="condition")
	private boolean condition;
	
	public BackTaskes() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getActiveDate() {
		return activeDate;
	}

	public void setActiveDate(Date activeDate) {
		this.activeDate = activeDate;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public Member getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(Member createdBy) {
		this.createdBy = createdBy;
	}

	public byte[] getPdf() {
		return pdf;
	}

	public void setPdf(byte[] pdf) {
		this.pdf = pdf;
	}

	public boolean isCondition() {
		return condition;
	}

	public void setCondition(boolean condition) {
		this.condition = condition;
	}

	
	
}
