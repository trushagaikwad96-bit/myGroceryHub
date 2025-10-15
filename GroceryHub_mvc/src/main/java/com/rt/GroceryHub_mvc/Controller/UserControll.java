package com.rt.GroceryHub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.rt.GroceryHub_mvc.Entity.UserTable;
import com.rt.GroceryHub_mvc.service.UserService;

@Controller
public class UserControll {
	@Autowired
	UserService  us;
	@PostMapping("/register")
	public String Register(@ModelAttribute UserTable u) {
		 UserTable u1= us.register(u);
		 if( u1 !=  null) {
			 return "logingpage";
		 }else {
			 return "RegisterUser";
		 }
		 
	}
       
}
