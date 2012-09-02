package com.vinspin.model.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vinspin.model.entities.Item;
import com.vinspin.model.entities.User;

@Repository
public class ListingDAOImpl implements ListingDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Item> getItems() {
		return sessionFactory.getCurrentSession().createQuery("FROM Item").list();
	}

	@Override
	public Item getItem(int itemId) {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Item.class);

        criteria.add(Restrictions.eq("id", itemId));
        List<Item> items = criteria.list();

        if (items == null || items.isEmpty()) {
            return null;
        }

        return items.get(0);
	}

	@Override
	public boolean addItem(Item item) {
		sessionFactory.getCurrentSession().save(item);
		return true;
	}

}
