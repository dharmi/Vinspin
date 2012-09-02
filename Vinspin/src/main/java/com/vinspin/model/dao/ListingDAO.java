package com.vinspin.model.dao;

import java.util.List;

import com.vinspin.model.entities.Item;

public interface ListingDAO {
	
	public List<Item> getItems();
	public Item getItem(int itemid);
	public boolean addItem(Item item);

}
