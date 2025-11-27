package com.rt.GroceryHub_mvc.serviceimp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rt.GroceryHub_mvc.Entity.GroceryProduct;

@Service
public class ProductServiceImp {
     
	@Autowired
	RestTemplate rt;
	
	String baseurl="http://localhost:9091/";
	
	
	public GroceryProduct[] viewProduct() {
	return	rt.getForObject(baseurl + "viewAllData", GroceryProduct[].class);
		
		
	}

}
