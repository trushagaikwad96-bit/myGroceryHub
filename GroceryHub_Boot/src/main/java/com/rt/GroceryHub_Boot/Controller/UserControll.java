package com.rt.GroceryHub_Boot.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.rt.GroceryHub_Boot.Entity.UserTable;
import com.rt.GroceryHub_Boot.Service.UserService;

@RestController
public class UserControll {
	@Autowired 
	UserService us;
	  @PostMapping("/UserRegister")
	  public void Register(@RequestBody UserTable u) {
		  us.Register(u);
	  }

}
