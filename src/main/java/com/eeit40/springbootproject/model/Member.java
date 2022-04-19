package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Member")
public class Member {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="id")
	private Integer id;
	
	@Column(name="member_name")
	private String member_name;
	
	@Column(name="member_account")
	private String member_account;
	
	@Column(name="member_password")
	private String member_password;
	
	@Column(name="member_email")
	private	String member_email;
	
	@Column(name="create_at")
	private	String create_at;
	
	@Column(name="birthday")
	private	String birthday;
	
	@Column(name="phone_num")
	private	String phone_num;
	
	@Column(name="member_address")
	private	String member_address;
	
	@Column(name="gender")
	private	String gender;
	
	
}
