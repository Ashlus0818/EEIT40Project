package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;

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
	
	@Column(name="messagetext", columnDefinition = "nvarchar(300)")
	private String messagetext;
	
	public CustomerMessage () {
		
	}

	
	
	@Override
	public String toString() {
		return "CustomerMessage [messageId=" + messageId + ", messageName=" + messageName + ", messageEmail="
				+ messageEmail + ", messageQuest=" + messageQuest + ", messagetext=" + messagetext + "]";
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
	
	
}
