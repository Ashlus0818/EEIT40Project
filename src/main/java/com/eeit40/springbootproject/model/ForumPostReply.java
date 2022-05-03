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


import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "forumpostreply")
public class ForumPostReply {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "postreplyID")
	private Integer postreplyID;

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

	public Integer getPostreplyID() {
		return postreplyID;
	}

	public void setPostreplyID(Integer postreplyID) {
		this.postreplyID = postreplyID;
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

	@Override
	public String toString() {
		return "ForumPostReply [postreplyID=" + postreplyID + ", recontext=" + recontext
				+ ", date=" + date + "]";
	}

	

}
