package com.eeit40.springbootproject.model;

import java.util.Arrays;
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

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "forumreply")
public class Forumreply {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "replyID")
	private Integer replyID;

	@Column(name = "userID")
	private Integer userID;
	
	@Column(name = "recontext")
	private String recontext;

	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "redate")
	private Date redate;

	@PrePersist
	public void onCreate() {
		if (redate == null) {
			redate = new Date();
		}
	}

	public Forumreply(Integer replyID, String recontext, Date redate) {
		super();
		this.recontext = recontext;
		this.redate = redate;
	}

	public Integer getReplyID() {
		return replyID;
	}

	public void setReplyID(Integer replyID) {
		this.replyID = replyID;
	}

	public String getRecontext() {
		return recontext;
	}

	public void setRecontext(String recontext) {
		this.recontext = recontext;
	}

	public Date getRedate() {
		return redate;
	}

	public void setRedate(Date redate) {
		this.redate = redate;
	}

	public Forumreply() {
	}

	@Override
	public String toString() {
		return "Forumreply [replyID=" + replyID + ", recontext=" + recontext + ", redate=" + redate + "]";
	}

}
