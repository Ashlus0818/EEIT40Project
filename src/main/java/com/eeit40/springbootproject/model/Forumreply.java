package com.eeit40.springbootproject.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "forumreply")
public class Forumreply {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "replyID")
	private Integer replyID;

	@Column(name = "postID")
	@Transient
	private Integer postID;
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "postID")
	private Forumpost forumpost;

	@Column(name = "userID")
	private Integer userID;
	
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

	public Forumreply(String recontext, Date date, Integer postID,Forumpost forumpost) {		
		this.recontext = recontext;
		this.date = date;
		this.postID = postID;
		this.forumpost = forumpost;
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
	
	public Integer getpostID() {
		return postID;
	}

	public void setFk_postID(Integer postID) {
		this.postID = postID;
	}

	public Forumreply() {
	}

	public Forumpost getForumpost() {
		return forumpost;
	}

	public void setForumpost(Forumpost forumpost) {
		this.forumpost = forumpost;
	}

	@Override
	public String toString() {
		return "Forumreply [replyID=" + replyID + ", postID=" + postID + ", forumpost=" + forumpost + ", userID="
				+ userID + ", recontext=" + recontext + ", date=" + date + "]";
	}



}
