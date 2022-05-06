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
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="BackTaskes")
public class BackTaskes {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="title")
	private String title;
	
	@Column(name="level")
	private String level;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="create_at", columnDefinition = "datetime")
	private Date create_at;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="lastModified", columnDefinition = "datetime")
	private Date lastModified;
	
	public BackTaskes() {
	}
	
	public BackTaskes(String name, String title) {
		super();
		this.name = name;
		this.title = title;
	}
	
	public BackTaskes(Integer id, String name, String title) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
	}

	public BackTaskes(Integer id, String name, String title, Date create_at, Date lastModified) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.create_at = create_at;
		this.lastModified = lastModified;
	}

	@PrePersist // 再轉換到 Persist 狀態以前去做以下方法
	public void createAt() {
		if (create_at == null) {
			create_at = new Date();
		}
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

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}
	
	
	
}
