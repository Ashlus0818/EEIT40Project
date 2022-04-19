package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Post")
public class Forumpost {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PostID")
	private Integer PostID;

	@Column(name = "UserID")
	private Integer UserID;

	@Column(name = "Title")
	private String Title;

	@Column(name = "Context")
	private String Context;

	@Column(name = "Image")
	private byte[] Image;

	@Column(name = "ParentPostID")
	private Integer ParentPostID;

	@Column(name = "IsDeleted")
	private Boolean IsDeleted;

	public Forumpost(Integer postID, Integer userID, String title, String context, byte[] image, Integer parentPostID,
			Boolean isDeleted) {
	}

	public Integer getPostID() {
		return PostID;
	}

	public void setPostID(Integer postID) {
		PostID = postID;
	}

	public Integer getUserID() {
		return UserID;
	}

	public void setUserID(Integer userID) {
		UserID = userID;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getContext() {
		return Context;
	}

	public void setContext(String context) {
		Context = context;
	}

	public byte[] getImage() {
		return Image;
	}

	public void setImage(byte[] image) {
		Image = image;
	}

	public Integer getParentPostID() {
		return ParentPostID;
	}

	public void setParentPostID(Integer parentPostID) {
		ParentPostID = parentPostID;
	}

	public Boolean getIsDeleted() {
		return IsDeleted;
	}

	public void setIsDeleted(Boolean isDeleted) {
		IsDeleted = isDeleted;
	}

}
