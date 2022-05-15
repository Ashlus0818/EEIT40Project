package com.eeit40.springbootproject.loginTest;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="AppUser")
public class AppUser {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	
	
	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "fk_appUserAuthority_id")
	private AppUserAuthority appUserAuthority;
	
	@Column(name="userName")
	private String userName;
	
	@Column(name="userPwd")
	private String userPwd;
	
	@Column(name="userPhone")
	private String userPhone;
	
	@Column(name="userAddress")
	private String userAddress;
	
	@Column(name="userGender")
	private String userGender;
	
	@Column(name="userBirth")
	private String userBirth;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="createAt", columnDefinition = "datetime")
	private Date createAt;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="lastModified", columnDefinition = "datetime")
	private Date lastModified;

	@PreUpdate
	public void lastModified() {
		if (lastModified == null) {
			lastModified = new Date();
		}else {
			lastModified = new Date();
		}
	}
	@PrePersist // 再轉換到 Persist 狀態以前去做以下方法
	public void createAt() {
		if (createAt == null) {
			createAt = new Date();
		}
	}
	public AppUser() {
	}

	public AppUser( String userName, String userPwd) {
		this.userName = userName;
		this.userPwd = userPwd;
	}

	public AppUser(Integer id, String userName, String userPwd) {
		super();
		this.id = id;
		this.userName = userName;
		this.userPwd = userPwd;
	}
	public AppUser(AppUserAuthority appUserAuthority, String userName, String userPwd, String userPhone,
			String userAddress, String userGender, String userBirth, Date createAt, Date lastModified) {
		super();
		this.appUserAuthority = appUserAuthority;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userPhone = userPhone;
		this.userAddress = userAddress;
		this.userGender = userGender;
		this.userBirth = userBirth;
		this.createAt = createAt;
		this.lastModified = lastModified;
	}
	public AppUserAuthority getAppUserAuthority() {
		return appUserAuthority;
	}
	
	public void setAppUserAuthority(AppUserAuthority appUserAuthority) {
		this.appUserAuthority = appUserAuthority;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public Date getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Date createAt) {
		this.createAt = createAt;
	}

	public Date getLastModified() {
		return lastModified;
	}

	public void setLastModified(Date lastModified) {
		this.lastModified = lastModified;
	}
	
	
	
}
