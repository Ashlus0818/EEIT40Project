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
@Table(name = "ReservationMessageTest")
public class ReservationMessageTest {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "mId")
	private Integer mId;

	@Column(name = "text", columnDefinition = "nvarchar(200)") //預設255空間,改200空間
	private String text;

	// Date引入util話,要用@Temporal,表跟資料庫說明我的資料型別要裝什麼(年月日/年月日時分秒...等)
	@DateTimeFormat(pattern = "yyyy/MM/dd HH:mm:ss") // 年月日時分秒的格式,因為不同資料庫有不同存的格式,例如有些會存到秒數後三位
	@Temporal(TemporalType.TIMESTAMP) // 年月日時分秒
	@Column(name = "added",columnDefinition = "datetime") //預設是datetime2型別,要換datetime型別要改)
	private Date added;

	public ReservationMessageTest() {
	}

	// 時間從系統產生,不是從資料庫 //在轉換到Persist狀態以前去做以下方法
	@PrePersist
	public void onCreateSystemTime() {
		if (added == null) {
			added = new Date();
		}
	}

	//source-->toString
	@Override
	public String toString() {
		return "ReservationMessageTest [mId=" + mId + ", text=" + text + ", added=" + added + "]";
	}

	public Integer getmId() {
		return mId;
	}

	public void setmId(Integer mId) {
		this.mId = mId;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Date getAdded() {
		return added;
	}

	public void setAdded(Date added) {
		this.added = added;
	}

}
