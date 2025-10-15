package com.rt.GroceryHub_Boot.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.GroceryHub_Boot.Entity.UserTable;
import com.rt.GroceryHub_Boot.Repository.UserRepository;

@Service
public class UserService {
	@Autowired 
	UserRepository ur;

	public UserTable loging(UserTable u) {
	return ur.findByUserNameAndEmailAndPasswordAndRole(u.getUserName(),u.getEmail(),u.getPassword(),u.getRole());
		
	}

	public void Register(UserTable u) {
		ur.save(u);
		
	}

}
