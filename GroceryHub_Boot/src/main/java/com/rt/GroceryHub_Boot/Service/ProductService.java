package com.rt.GroceryHub_Boot.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.GroceryHub_Boot.Entity.GroceryProduct;
import com.rt.GroceryHub_Boot.Repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductRepository pr;
	
	
	public GroceryProduct addproduct(GroceryProduct g) {
		 return pr.save(g);
	}


	public GroceryProduct updateProduct(GroceryProduct u, int id) {
		 Optional<GroceryProduct> list= pr.findById(id);
		 
		 if(list.isPresent()) {
			     GroceryProduct obj=list.get();
			 
			    obj.setProductName(u.getProductName());
		        obj.setProductPrice(u.getProductPrice());
		        obj.setProductCategory(u.getProductCategory());
		        obj.setUnit(u.getUnit());
		        obj.setDescription(u.getDescription());
			 
		        return pr.save(obj);
		 }else {
			  throw new RuntimeException("user not found");
			 }
		 
	}
	
	


	public void deleteById(int id) {
		 pr.deleteById(id);
	}


	public List<GroceryProduct> viewData() {
	   return	pr.findAll();
		
	}

}
