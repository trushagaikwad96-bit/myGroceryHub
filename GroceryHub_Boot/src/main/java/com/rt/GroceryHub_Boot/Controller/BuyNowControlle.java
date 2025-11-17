package com.rt.GroceryHub_Boot.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BuyNowControlle {
	
	 @PostMapping("/buyNow")
	    public String buyNow(
	            @RequestParam String productName,
	            @RequestParam String productPrice,
	            Model model) {

	        model.addAttribute("productName", productName);
	        model.addAttribute("productPrice", productPrice);

	        return "Checkout"; // Checkout.jsp page
	    }

}
