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
@Table(name = "forumreport")
public class ForumReport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "reportID")
	private Integer reportID;

	@Column(name = "postID")
	private Integer postID;
	
	@Column(name = "userID")
	private Integer userID;

	@Size(min = 1, max = 100, message = "標題請輸入1到100個字串")
	@Column(name = "reportReason")
	private String reportReason;

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
	
	public ForumReport(String reportReason,Date date) {
		this.reportReason = reportReason;
		this.date = date;
	}

	public Integer getReportID() {
		return reportID;
	}

	public void setReportID(Integer reportID) {
		this.reportID = reportID;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public String getReportReason() {
		return reportReason;
	}

	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	public ForumReport() {
	}

	public Integer getPostID() {
		return postID;
	}

	public void setPostID(Integer postID) {
		this.postID = postID;
	}

	@Override
	public String toString() {
		return "ForumReport [reportID=" + reportID + ", postID=" + postID + ", userID=" + userID + ", reportReason="
				+ reportReason + ", date=" + date + "]";
	}


}