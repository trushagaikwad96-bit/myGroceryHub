package com.rt.GroceryHub_Boot.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.rt.GroceryHub_Boot.Entity.GroceryProduct;
import com.rt.GroceryHub_Boot.Service.ProductService;

@RestController
public class ProductControll {
	    
	@Autowired
	ProductService ps;
	
	@PostMapping("/addProduct")
    public GroceryProduct addproduct(@RequestBody GroceryProduct g) {
		return ps.addproduct(g);
	}

	@PutMapping("/updateProduct/{id}")
	public GroceryProduct updateProduct(@RequestBody GroceryProduct u,@PathVariable int id) {
		return ps.updateProduct(u,id);
	}
	
	
	public String deleteProduct(int id) {
	    ps.deleteById(id);
	    return "Product Deleted Successfully";
	}
	
	@GetMapping("/viewAllData")
	public List<GroceryProduct> viewAllData() {
		 return ps.viewData();
	}

	
}
