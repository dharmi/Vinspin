package com.vinspin.model.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="USR")
public class User {

	@Id
	@Column(name="USR_EMAIL")
	private String email;
	
	@Column(name="USR_PASSWORD")
	private String password;
	
	@Column(name="USR_TYP")
	private String type;
	
	@Column(name="USR_CREATEDBY")
	private int createdBy;
	
	@Column(name="USR_CREATEDTS")
	private Date createdTS;
	
	@Column(name="USR_LOGGEDIN")
	private Date logggedInTS;
	
	@Column(name="USR_LOGGEDOUT")
	private Date loggedOutTS;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedTS() {
		return createdTS;
	}

	public void setCreatedTS(Date createdTS) {
		this.createdTS = createdTS;
	}

	public Date getLogggedInTS() {
		return logggedInTS;
	}

	public void setLogggedInTS(Date logggedInTS) {
		this.logggedInTS = logggedInTS;
	}

	public Date getLoggedOutTS() {
		return loggedOutTS;
	}

	public void setLoggedOutTS(Date loggedOutTS) {
		this.loggedOutTS = loggedOutTS;
	}

}
