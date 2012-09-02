
package com.vinspin.model.form;

import java.io.Serializable;

public class Login implements Serializable{
	
	private static final long serialVersionUID = -2591692399145425264L;
	
	private String email;
	private String password;

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
}