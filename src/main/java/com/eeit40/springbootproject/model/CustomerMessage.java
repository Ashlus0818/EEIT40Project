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
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="CustomerMessage")
public class CustomerMessage {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="messageId")
	private Integer messageId;
	
	@Column(name="messageName")
	private String messageName;
	
	@Email(message = "請輸入 Email")
	@Column(name="messageEmail")
	private String messageEmail;
	
	@Column(name="messageQuest")
	private String messageQuest;
	
	@Size(min = 2, max = 30, message = "請輸入 2 到 30 個字串")
	@Column(name="messagetext", columnDefinition = "nvarchar(300)")
	private String messagetext;
	
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "date", columnDefinition = "datetime")
	private Date date;

	@PrePersist
	public void onCreate() {
		if (date == null) {
			date = new Date();
		}
	}
	
	public CustomerMessage () {
		
	}

	public Integer getMessageId() {
		return messageId;
	}

	public void setMessageId(Integer messageId) {
		this.messageId = messageId;
	}

	public String getMessageName() {
		return messageName;
	}

	public void setMessageName(String messageName) {
		this.messageName = messageName;
	}

	public String getMessageEmail() {
		return messageEmail;
	}

	public void setMessageEmail(String messageEmail) {
		this.messageEmail = messageEmail;
	}

	public String getMessageQuest() {
		return messageQuest;
	}

	public void setMessageQuest(String messageQuest) {
		this.messageQuest = messageQuest;
	}

	public String getMessagetext() {
		return messagetext;
	}

	public void setMessagetext(String messagetext) {
		this.messagetext = messagetext;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CustomerMessage [messageId=");
		builder.append(messageId);
		builder.append(", messageName=");
		builder.append(messageName);
		builder.append(", messageEmail=");
		builder.append(messageEmail);
		builder.append(", messageQuest=");
		builder.append(messageQuest);
		builder.append(", messagetext=");
		builder.append(messagetext);
		builder.append(", date=");
		builder.append(date);
		builder.append("]");
		return builder.toString();
	}

	public CustomerMessage(Integer messageId, String messageName, @Email(message = "請輸入 Email") String messageEmail,
			String messageQuest, String messagetext, Date date) {
		super();
		this.messageId = messageId;
		this.messageName = messageName;
		this.messageEmail = messageEmail;
		this.messageQuest = messageQuest;
		this.messagetext = messagetext;
		this.date = date;
	}

	
	
}
