package com.vinspin.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.vinspin.helpers.Util;
import com.vinspin.model.entities.Item;
import com.vinspin.model.entities.User;
import com.vinspin.service.ListingService;

@Controller
@SessionAttributes({"loginFormAttrib"})
public class ListingController {

	@Autowired
	public ListingService listingService;

	@RequestMapping(value="/listing.htm")
	public ModelAndView showListing(){
		List<Item> items = listingService.getItems();

		ModelAndView mav = new ModelAndView("listing");
		mav.addObject("items", items);
		return mav;
	}

	@RequestMapping("/details.htm")
	public ModelAndView showDetails(HttpServletRequest request , HttpSession session){
		System.out.println(request.getParameter("itemid"));
		if(!Util.nullOrEmptyOrBlank(request.getParameter("itemid"))){
			Item item = listingService.getDetails(Integer.parseInt(request.getParameter("itemid")));
			ModelAndView mavAndView = new ModelAndView("details");
			mavAndView.addObject("item", item);
			return mavAndView;
		}else
			return new ModelAndView("listing");
	}

	@RequestMapping(value = "/addItem.htm", method=RequestMethod.GET)
	public String addItem(Model model) {
		System.out.println("ListingController :: addItem");
		model.addAttribute("item", new Item());
		return "addItem";
	}

	@RequestMapping(value = "/addItem.htm", method=RequestMethod.POST)
	public ModelAndView processAddItem(@ModelAttribute("item") Item item, 
			@ModelAttribute("user") User user,
			BindingResult result, HttpSession session, Errors errors){
		System.out.println("ListingController :: processAddItem");

		if (errors.hasErrors()){
			ModelAndView mav = new ModelAndView("addItem");
			mav.addObject("errors", errors);
			return mav;
		}

		//item.setCreatedBy(user.getEmail());
		item.setCreatedBy("dharmi@gmail.com");
		listingService.addItem(item);
		return new ModelAndView("redirect:/addItem.htm");
	}
	
	@RequestMapping(value = "/listItems.htm", method=RequestMethod.GET)
	public ModelAndView listItems(){
		System.out.println("ListingController :: listItems");

		List<Item> items = listingService.getItems();

		ModelAndView mav = new ModelAndView("listItems");
		mav.addObject("items", items);
		return mav;
	}

}
