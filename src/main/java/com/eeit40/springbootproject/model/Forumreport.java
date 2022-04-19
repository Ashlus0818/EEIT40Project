package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Report")
public class Forumreport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PostID")
	private Integer PostID;

	@Column(name = "UserID")
	private Integer UserID;

	@Column(name = "UserReason")
	private String UserReason;

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

	public String getUserReason() {
		return UserReason;
	}

	public void setUserReason(String userReason) {
		UserReason = userReason;
	}

	public Forumreport(Integer postID, Integer userID, String userReason) {
	}

}
