package com.rt.GroceryHub_mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.GroceryHub_mvc.Entity.UserTable;
import com.rt.GroceryHub_mvc.serviceimp.LogingImp;

@Service
public class Loging_Service {

	@Autowired
	LogingImp Li;
	
	public UserTable logindata(UserTable u) {
		 return Li.logindata(u);		
	}
	
	

}
