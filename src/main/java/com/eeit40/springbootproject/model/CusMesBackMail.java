package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;

@Entity
@Table(name="CusMesBackMail")
public class CusMesBackMail {
	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="mailId")
	private Integer mailId;
	
	@Email
	@Column(name="email")
	private String email;
	
	@Column(name="mailQuest", columnDefinition = "nvarchar(300)")
	private String mailQuest;
	
	@Column(name="emailToMes", columnDefinition = "nvarchar(300)")
	private String emailToMes;
	
	public CusMesBackMail(){
		
	}

	public Integer getMailId() {
		return mailId;
	}

	public void setMailId(Integer mailId) {
		this.mailId = mailId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailToMes() {
		return emailToMes;
	}

	public void setEmailToMes(String emailToMes) {
		this.emailToMes = emailToMes;
	}

	public String getMailQuest() {
		return mailQuest;
	}

	public void setMailQuest(String mailQuest) {
		this.mailQuest = mailQuest;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CusMesBackMail [mailId=");
		builder.append(mailId);
		builder.append(", email=");
		builder.append(email);
		builder.append(", mailQuest=");
		builder.append(mailQuest);
		builder.append(", emailToMes=");
		builder.append(emailToMes);
		builder.append("]");
		return builder.toString();
	}

	public CusMesBackMail(Integer mailId, @Email String email, String mailQuest, String emailToMes) {
		super();
		this.mailId = mailId;
		this.email = email;
		this.mailQuest = mailQuest;
		this.emailToMes = emailToMes;
	}
	public CusMesBackMail( @Email String email, String mailQuest, String emailToMes) {
		
		
		this.email = email;
		this.mailQuest = mailQuest;
		this.emailToMes = emailToMes;
	}
	
}
