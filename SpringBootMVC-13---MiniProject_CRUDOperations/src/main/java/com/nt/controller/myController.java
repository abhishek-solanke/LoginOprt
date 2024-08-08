package com.nt.controller;

import java.util.Map;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.nt.Model_Entity.myEntity;
import com.nt.service.IService;
import jakarta.servlet.http.HttpSession;

@Controller
public class myController 
{
	@Autowired
	private IService iss;
	
	
	@GetMapping("/")
	public String getWelcome()
	{
		return "index";
		
	}
	
	@GetMapping("/report")
	public String getAllData(Map<String,Object> mp)
	{
		Iterable<myEntity> it = iss.getAllData();
		mp.put("Tabdata",it);
		return "reportData";
	}
	
	
	@GetMapping("/addData")							//Launching the form page for registering the employee.....
	public String addEmpData(@ModelAttribute("myEnt") myEntity ent)
	{
		return "register_Employee";
	}
	
	
   	//Double posting problem
    //Code reusibility problem
	//shared memory scope is limited to only current request..not for redirect...
	
	/*@PostMapping("/addData")
	public String registertingData(Map<String,Object> mp,@ModelAttribute("obj1") myEntity me)
	{
		myEntity myE1 = iss.registerEmp(me); //data saved i.e emp registered...
		Integer no = myE1.getEmpno();
		String msg = "Employee is Saved with id Value : "+no;
		
		Iterable<myEntity> it = iss.getAllData();
		mp.put("Tabdata",it); //putting the result in shared memory as ModelAtrribute
		mp.put("mymsg", msg);//("Tabdata")  same result page , so there attribute name placed should match for executing
		
		return "reportData";  	
	}*/
	
	
	@PostMapping("/addData")      //RedirectAttributes reAttr  //best ids this only
	public String registertingData(HttpSession sess,@ModelAttribute("obj1") myEntity me)
	{
		myEntity myE1 = iss.registerEmp(me); //data saved i.e emp registered...
		Integer no = myE1.getEmpno();
		String msg = "Employee is Saved with id Value : "+no;
		
		sess.setAttribute("myMsg",msg);//("Tabdata")  same result page , so there attribute name placed should match for executing
		
		return "redirect:report";  	
	}
	
	 
	@GetMapping("/edit")										//here empty object is created with this antt
	public String editEmpData(@RequestParam("sno") Integer sno,@ModelAttribute("obj2") myEntity mty)
	{
		System.out.println("sno:"+sno);
		myEntity foundedObj = iss.editEmpData(sno);
		//foundedObj's data is copied to empty obj mty and passed to view comp..
		BeanUtils.copyProperties(foundedObj,mty); 
		return "edit_employee";
	}
	  

	@PostMapping("/edit")
	public String editDataBind(@ModelAttribute("obj3") myEntity myEnt,RedirectAttributes attr)
	{
		System.out.println("data"+"\n"+myEnt);
		//in myEnt object, form data is binded & that data we are passing to save(-) method of jpa.....
		myEntity newObj = iss.registerEmp(myEnt); //calling service class method....
		System.out.println("recored Saved with Id:"+newObj.getEmpno()+"\n "+newObj);
		attr.addFlashAttribute("updtmsg",newObj.getEmpno()+" NO. Employee details are updated");
		//return LVN
		//return "success_edit";
		return "redirect:report";
	}
	
	
	@GetMapping("/delete")
	public String deleteData(@RequestParam("sno")Integer sno,Map<String,Object> mp)
	{
		mp.put("number",sno);
		return "confirmPage";
	}
	
	@GetMapping("/confirmYes")
	public String deleteDataConfirm(@RequestParam("sno")Integer sno,RedirectAttributes attr)
	{
		String msg = iss.deleteEmpData(sno);//this method will find that object is present or not? if Y then delete or else throw exception
		attr.addFlashAttribute("msgD",msg);
		return "redirect:report";
	}
	
	
	
}
