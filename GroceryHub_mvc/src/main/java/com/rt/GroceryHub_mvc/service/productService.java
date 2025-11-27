package com.rt.GroceryHub_mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.GroceryHub_mvc.Entity.GroceryProduct;
import com.rt.GroceryHub_mvc.serviceimp.ProductServiceImp;

@Service
public class productService {
	@Autowired
	ProductServiceImp psl;

	public GroceryProduct[] viewProduct() {
	return	psl.viewProduct();
		
	}

}
