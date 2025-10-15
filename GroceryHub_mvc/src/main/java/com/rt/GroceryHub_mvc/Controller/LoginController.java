package com.rt.GroceryHub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rt.GroceryHub_mvc.Entity.UserTable;
import com.rt.GroceryHub_mvc.service.Loging_Service;

@Controller
public class LoginController {

	@Autowired 
	Loging_Service ls;
	
	@PostMapping("/Login")
	public String logindata(@ModelAttribute UserTable u) {
		UserTable usertable=ls.logindata(u);
		
		if(usertable != null) {
			return "HomePage";
		}else {
			return "loginpage";
		}
		
			}
}
