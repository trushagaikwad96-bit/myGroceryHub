package com.rt.GroceryHub_mvc.serviceimp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rt.GroceryHub_mvc.Entity.UserTable;

@Service
public class UserImp {
	@Autowired
	RestTemplate rt;
	
	String baseurl="http://localhost:9091/";
	
	

	public UserTable save(UserTable u) {
		
	return	rt.postForObject(baseurl + "UserRegister", u, UserTable.class);
	}

}

