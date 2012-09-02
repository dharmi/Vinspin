package com.vinspin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vinspin.model.dao.ListingDAO;
import com.vinspin.model.entities.Item;

@Service
public class ListingServiceImpl implements ListingService {

	@Autowired
	private ListingDAO listingDAO;
	
	@Override
	public List<Item> getItems() {
		return listingDAO.getItems();
	}

	@Override
	public Item getDetails(int itemId) {
		return listingDAO.getItem(itemId);
	}

	@Override
	public boolean addItem(Item item) {
		return listingDAO.addItem(item);
	}

}
