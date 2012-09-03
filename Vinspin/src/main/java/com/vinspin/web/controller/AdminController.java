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

import com.vinspin.model.entities.User;
import com.vinspin.model.form.Login;
import com.vinspin.model.form.UserInfo;
import com.vinspin.service.AdminService;

@Controller
@SessionAttributes({"loginFormAttrib"}) 
public class AdminController {

	@Autowired
	public AdminService adminService;
	@Autowired
	private SessionFactory sessionFactory;

	@RequestMapping(value = "/login.htm", method=RequestMethod.GET)
	public String loginForm(Model model) {
		System.out.println("AdminController :: loginForm123");
		model.addAttribute("login", new Login());
		return "login";
	}

	@RequestMapping(value="/login.htm", method=RequestMethod.POST)
	public String processLogin (@ModelAttribute("login") Login login, BindingResult result, HttpSession session){
		System.out.println("AdminController :: processLogin");
		boolean isValid = adminService.processLogin(login);
		if (isValid) {
			session.setAttribute(login.getClass().getName(), login);
			//return "redirect:/welcome.htm";
			//return "redirect:/index.htm";
			return "redirect:/listing.htm";
		}
		else {
			return "redirect:/welcome.htm";
		}
	}

	@RequestMapping("/logout")
	public String processlogout(HttpServletRequest request , HttpSession session){
		Login login = (Login) session.getAttribute(Login.class.getName());
		adminService.processLogout(login);
		session.invalidate();
		return "redirect:/welcome.htm";
	}

	@RequestMapping(value = "/createUser.htm", method=RequestMethod.GET)
	public String createUser(Model model) {
		System.out.println("AdminController :: createUser");
		model.addAttribute("userInfo", new UserInfo());
		return "createUser";
	}

	@RequestMapping(value = "/createUser.htm", method=RequestMethod.POST)
	public ModelAndView processCreateUser(@ModelAttribute("userInfo") UserInfo userInfo, 
			BindingResult result, HttpSession session, Errors errors){
		System.out.println("AdminController :: processCreateUser");

		if (errors.hasErrors()){
			ModelAndView mav = new ModelAndView("createUser");
			mav.addObject("errors", errors);
			return mav;
		}

		sessionFactory.getCurrentSession().save(userInfo.getUser());
		userInfo.getUserDetails().setEmail(userInfo.getUser().getEmail());
		sessionFactory.getCurrentSession().save(userInfo.getUserDetails());	
		return new ModelAndView("redirect:/listUsers.htm");

	}

	@RequestMapping("/listUsers.htm")
	public ModelAndView listUsers(){
		List<User> users = sessionFactory.getCurrentSession().createQuery("FROM User").list();

		ModelAndView mav = new ModelAndView("listUsers");
		mav.addObject("users", users);
		return mav;
	}

	@RequestMapping(value="/home.htm", method=RequestMethod.POST)
	public ModelAndView addPerson(User p, Errors errors)
	{
		/*if (errors.hasErrors())
		{
			ModelAndView mav = new ModelAndView("addPerson");
			mav.addObject("errors", errors);
			return mav;
		}

		sessionFactory.getCurrentSession().save(p);*/	
		return new ModelAndView("redirect:/home.htm");
	}

	@RequestMapping(value="/home.htm")
	public String home()
	{
		return "home";
	}

	@RequestMapping(value = "/welcome.htm", method=RequestMethod.GET)
	public String welcome (Model model) {
		System.out.println("AdminController :: welcome123");
		model.addAttribute("login", new Login());
		return "welcome";
	}



}
