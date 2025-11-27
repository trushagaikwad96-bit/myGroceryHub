package com.rt.GroceryHub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rt.GroceryHub_mvc.Entity.UserTable;
import com.rt.GroceryHub_mvc.service.Loging_Service;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	@Autowired 
	Loging_Service ls;
	
	@PostMapping("/Login")
	public String logindata(@ModelAttribute UserTable u, HttpSession session) {

	    UserTable usertable = ls.logindata(u);

	    if(usertable != null) {

	        // Save user details in session
	        session.setAttribute("userName", usertable.getUserName());
	        session.setAttribute("userRole", usertable.getRole());

	        return "HomePage";  
	    } 
	    else {
	        return "loginpage";
	    }
	}

}
