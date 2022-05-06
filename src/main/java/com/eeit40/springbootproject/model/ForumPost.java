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
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "forumpost")
public class ForumPost {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "postID")
	private Integer postID;

	@Column(name = "userID")
	private Integer userID;

	@Size(min = 1, max = 100, message = "標題請輸入1到100個字串")
	@Column(name = "title")
	private String title;

	@Size(min = 1, message = "內容請至少輸入1個字")
	@Column(name = "context")
	private String context;

	@Column(name = "image")
	private byte[] image;

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

	public ForumPost() {
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Forumpost [postID=" + postID + ", userID=" + userID + ", title=" + title + ", context=" + context
				+ ", image=" + Arrays.toString(image) + ", date=" + date + "]";
	}

}