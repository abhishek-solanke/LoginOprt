package com.nt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MyController01 
{
	@GetMapping("/")
	public String getWelcome()
	{
		return "welcome";
	}
	
	@GetMapping("/login")
	public String getLoginForm()
	{
		return "loginFormPage";
	}
	
	@PostMapping("/getResult")
	public String getData()
	{
		return null;
	}
}
