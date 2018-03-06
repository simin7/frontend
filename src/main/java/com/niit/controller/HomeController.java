package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	HomeController(){
		System.out.println("in the controller");
	}
	@RequestMapping("/home")
	public String homepage(){
		return "home";
	}
	@RequestMapping("/aboutus")
	public String aboutsus(){
		return "aboutus";
	}
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	
}
