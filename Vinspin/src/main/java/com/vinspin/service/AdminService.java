package com.vinspin.service;

import com.vinspin.model.form.Login;

public interface AdminService {
	
	public boolean processLogin(Login login);
	public boolean processLogout(Login login);

}
