package com.vinspin.model.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vinspin.helpers.Util;
import com.vinspin.model.entities.User;
import com.vinspin.model.form.Login;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean processLogin(Login login) {

        if (Util.nullOrEmptyOrBlank(login.getEmail()))
            return false;

        User user = getUserByEmail(login.getEmail());

        if (user != null && 
        		user.getEmail().equals(login.getEmail()) && 
        		user.getPassword().equals(login.getPassword())) {
        	return true;
        }
        return false;
	}

	@Override
	public boolean processLogout(Login login) {
		return true;
	}

    private User getUserByEmail (String email) {
        Session session = sessionFactory.openSession();
        Criteria criteria = session.createCriteria(User.class);

        criteria.add(Restrictions.eq("email",email));
        List<User> users = criteria.list();

        if (users == null ||
                users.isEmpty()) {
            return null;
        }

        return users.get(0);
    }
}
