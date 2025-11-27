package com.rt.GroceryHub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class BuyNowController {
	
	 @Autowired
	    RestTemplate rt;

	    String baseurl = "http://localhost:9091/";

	    @PostMapping("/buyNow")
	    public String buyNow(
	            @RequestParam String productName,
	            @RequestParam String productPrice,
	            Model model) {

	       
	        model.addAttribute("productName", productName);
	        model.addAttribute("productPrice", productPrice);

	        return "Checkout";  
	    }
}
