package com.rt.GroceryHub_mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.GroceryHub_mvc.Entity.UserTable;
import com.rt.GroceryHub_mvc.serviceimp.UserImp;

@Service
public class UserService {
    @Autowired
      UserImp ui;
    
	public UserTable register(UserTable u) {
		return  ui.save(u);
		
	}

}
