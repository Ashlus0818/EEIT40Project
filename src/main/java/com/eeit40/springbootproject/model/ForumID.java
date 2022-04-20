package com.eeit40.springbootproject.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "forumid")
public class ForumID {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ForumID")
	private Integer ForumID;

	public ForumID(Integer forumID) {

	}

	public Integer getForumID() {
		return ForumID;
	}

	public void setForumID(Integer forumID) {
		ForumID = forumID;
	}

}
