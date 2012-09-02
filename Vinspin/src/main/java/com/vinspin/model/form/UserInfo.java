package com.vinspin.model.form;

import com.vinspin.model.entities.User;
import com.vinspin.model.entities.UserDetails;

public class UserInfo {
	
	User user;
	UserDetails userDetails;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserDetails getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

}
