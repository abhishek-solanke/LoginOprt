package com.nt.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.nt.model.BeanClass;
import com.nt.model.loginModel;
import com.nt.service.IService;

@Controller
public class myController01 
{
	@Autowired
	private IService is;
	
	@GetMapping("/")
	public String getHomePage()
	{
		return "welcome";
	}
	
	@GetMapping("/getForm")
	public String getformPage()
	{
		return "formPage";
	}
	
	
	@PostMapping("/fetchForm")
	public String getresultPage(Map<String,Object> mp,@ModelAttribute("log") BeanClass lm)
	{
		System.out.println("model: "+lm);
		if(lm.getSno()!=null)
		{
			mp.put("details",lm);
			
			loginModel lm01 = new loginModel();
			//Setting data to DB's entity class taking from Model Class
			lm01.setSno(lm.getSno());
			lm01.setName(lm.getName());
			System.out.println("Name:"+lm.getName());
			lm01.setUsername(lm.getUsername());
			lm01.setPwd(lm.getPwd());
			
			loginModel mod = is.insertData(lm01);
			return "showData";
			/*
		 	1. form data comes to bean class 
		 	2. from bean class we put into handler method with @ModelAttribute
		 	3. from this we collect data and pass to Entity class object
		 	4. after this we pass that entity class object to save(-) method of CrudRepository..
		 	5. then the insertion is done in db....
		 */
		}
		else
		{
			return "errorPage";
		}
		
	}
	
	@GetMapping("/fetch")
	public String showAllData(Map<String,Object> mp)
	{
		Iterable<loginModel> it = is.fetchAllData();
		mp.put("result",it);
		return "showResult";
	}
	
	@GetMapping("/regis")
	public String register()
	{
		return "registrationPage";
	}
	
	@PostMapping("/checkLogin")
	public String getLoginCred(Map<String,Object> mp,@ModelAttribute("log1") BeanClass bc1)
	{
		Integer idNo = bc1.getSno();
		loginModel lm1 = is.findDataById(idNo);
		
		if(lm1.getUsername().equals(bc1.getUsername()) && lm1.getPwd().equals(bc1.getPwd()))
		{
			//login successful
			mp.put("succ",lm1);
			/*System.out.println("Name : "+bc1.getName());
			System.out.println("Name : "+lm1.getName());*/
			return "successLogin";
		}
		else
		{
			return "errorPage";
		}
		
	}
	
	
	
	
}
