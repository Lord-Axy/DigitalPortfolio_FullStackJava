package com.dp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dp.Dao.UserDAO;
import com.dp.model.User;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	
	@RequestMapping("/hai")
	public ModelAndView register(){
	ModelAndView m=new ModelAndView("hai");
	m.addObject("userAgent", new User());
		return m;	
	}
	
	@RequestMapping(value="/registration")
	public String userregister(@ModelAttribute("userAgent") User user)
	{
		if(userDAO.addUser(user))
		{
			return "redirect:/file";
		}
		else
		{
			return "redirect:/hai";
		}
		
	}
}