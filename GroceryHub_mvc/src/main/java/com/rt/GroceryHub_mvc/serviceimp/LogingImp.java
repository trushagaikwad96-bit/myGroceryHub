package com.rt.GroceryHub_mvc.serviceimp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.rt.GroceryHub_mvc.Entity.UserTable;

@Service
public class LogingImp {
	@Autowired
	RestTemplate rt;
	
	String baseurl="http://localhost:9091/";

	public UserTable logindata(UserTable u) {
		
	return	rt.postForObject(baseurl + "login",u,UserTable.class );
	}
	
	

}
