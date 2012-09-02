package com.vinspin.model.dao;

import com.vinspin.model.form.Login;

public interface AdminDAO {

	public boolean processLogin(Login login);
	public boolean processLogout(Login login);

}
