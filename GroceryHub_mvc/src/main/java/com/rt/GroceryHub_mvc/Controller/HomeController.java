package com.rt.GroceryHub_mvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String Demo() {
		return "loginpage";
	}
	
	@GetMapping("/register")
	public String register() {
		return "RegisterUser";
	}
	@GetMapping("/loginp")
	public String login() {
		return"loginpage";
	}
		
	@GetMapping("/viewproducts")
	public String viewproducts() {
		return "redirect:/viewProduct";
	}
	
	@GetMapping("/Home")
	public String Home() {
		return "HomePage";
	}
	@GetMapping("/contactpage")
	public String contact() {
		return "contact";
	}
	@GetMapping("/about")
	public String about() {
	    return "about";
	}

}
