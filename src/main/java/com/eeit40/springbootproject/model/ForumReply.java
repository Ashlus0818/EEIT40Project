package com.eeit40.springbootproject.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "forumreply")
public class ForumReply {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "replyID")
	private Integer replyID;

	@Column(name = "postID")
	private Integer postID;

	@Column(name = "userID")
	private Integer userID;
	
	@Column(name = "password")
	private String password;

	@Size(min = 1, max = 100, message = "標題請輸入1到100個字串")
	@Column(name = "recontext")
	private String recontext;

	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "date")
	private Date date;

	@PrePersist
	public void onCreate() {
		if (date == null) {
			date = new Date();
		}
	}

	public Integer getReplyID() {
		return replyID;
	}

	public void setReplyID(Integer replyID) {
		this.replyID = replyID;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getRecontext() {
		return recontext;
	}

	public void setRecontext(String recontext) {
		this.recontext = recontext;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public ForumReply() {
	}

	public Integer getPostID() {
		return postID;
	}

	public void setPostID(Integer postID) {
		this.postID = postID;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "ForumReply [replyID=" + replyID + ", postID=" + postID + ", userID=" + userID + ", recontext="
				+ recontext + ", password=" + password+ ", date=" + date + "]";
	}

}
