package com.eeit40.springbootproject.logintest;



import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="AppUserAuthority")
public class AppUserAuthority {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="authority")
	private String authority;

	
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "appUserAuthority")
	private Set<AppUser> appuser = new LinkedHashSet<AppUser>();
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public AppUserAuthority(String authority) {
		this.authority = authority;
	}

	public AppUserAuthority() {
	}

	public Set<AppUser> getAppuser() {
		return appuser;
	}

	public void setAppuser(Set<AppUser> appuser) {
		this.appuser = appuser;
	}


	
	
}
