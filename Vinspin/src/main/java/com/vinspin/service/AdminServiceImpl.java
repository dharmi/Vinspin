package com.vinspin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vinspin.model.dao.AdminDAO;
import com.vinspin.model.form.Login;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public boolean processLogin(Login login) {
		System.out.println("AdminServiceImpl :: processLogin");
		return adminDAO.processLogin(login);
	}

	@Override
	public boolean processLogout(Login login) {
		System.out.println("AdminServiceImpl :: processLogout");
		return adminDAO.processLogout(login);
	}

}
