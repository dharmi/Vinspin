package com.vinspin.service;

import java.util.List;

import com.vinspin.model.entities.Item;

public interface ListingService {
	
	public List<Item> getItems();
	public Item getDetails(int itemId);
	public boolean addItem(Item item);

}
