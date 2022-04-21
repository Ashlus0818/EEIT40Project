package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "forumpost")
public class Forumpost {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "postID")
	private Integer postID;

	@Column(name = "userID")
	private Integer userID;

	@Column(name = "title")
	private String title;

	@Column(name = "context")
	private String context;

	@Column(name = "image")
	private byte[] image;

	@Column(name = "parentPostID")
	private Integer parentPostID;

	@Column(name = "isDeleted")
	private Boolean isDeleted;

	public Forumpost(String title, String context, byte[] image, Boolean isDeleted) {
		this.title = title;
		this.context = context;
		this.image = image;
		this.isDeleted = isDeleted;
	}

	public Forumpost() {
		super();
	}

	public Integer getPostID() {
		return postID;
	}

	public void setPostID(Integer postID) {
		this.postID = postID;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public Integer getParentPostID() {
		return parentPostID;
	}

	public void setParentPostID(Integer parentPostID) {
		this.parentPostID = parentPostID;
	}

	public Boolean getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}



}