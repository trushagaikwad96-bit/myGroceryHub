package com.rt.GroceryHub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rt.GroceryHub_mvc.Entity.GroceryProduct;
import com.rt.GroceryHub_mvc.service.productService;

@Controller
public class ProductControll {
	@Autowired 
	productService ps;
	

	@GetMapping("/viewProduct")
	public String view(Model m) {
		GroceryProduct[] list=ps.viewProduct();
		if(list == null) {
			System.out.println("ok");
		}
		m.addAttribute("product",list);
		return "viewData";
		
	}
}
