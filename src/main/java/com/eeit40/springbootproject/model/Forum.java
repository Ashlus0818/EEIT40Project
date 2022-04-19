package com.eeit40.springbootproject.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Forum")
public class Forum {


		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name = "ForumId")
		private Integer ForumId;

		public Integer getForumId() {
			return ForumId;
		}

		public void setForumId(Integer forumId) {
			ForumId = forumId;
		}

		public Forum(Integer forumId) {
			super();
			ForumId = forumId;
		}
	
	
	

	
}
