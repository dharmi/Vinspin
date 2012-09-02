package com.vinspin.model.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="USERDETAILS")
public class UserDetails {

	@Id
	@Column(name="USR_EMAIL")
	private String email;
	
	@Column(name="USR_AGE")
	private String age;

	@Column(name="USR_FNAME")
	private String firstName;
	
	@Column(name="USR_LNAME")
	private String lastName;
	
	@Column(name="USR_ADDRESS")
	private String address;
	
	@Column(name="USR_MOBILE")
	private String mobile;
	
	@Column(name="USR_CITY")
	private String city;
	
	@Column(name="USR_COUNTRY")
	private String country;
	
	@Column(name="USR_ZIPCODE")
	private String zipCode;
	
	@Column(name="USR_TIMECREATED")
	private Date timeCreated;
	
	@Column(name="USR_TIMEUPDATED")
	private Date timeUpdated;
	
	@Column(name="USR_CREATEDBY")
	private int createdBy;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public Date getTimeCreated() {
		return timeCreated;
	}

	public void setTimeCreated(Date timeCreated) {
		this.timeCreated = timeCreated;
	}

	public Date getTimeUpdated() {
		return timeUpdated;
	}

	public void setTimeUpdated(Date timeUpdated) {
		this.timeUpdated = timeUpdated;
	}

	public int getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	
}
