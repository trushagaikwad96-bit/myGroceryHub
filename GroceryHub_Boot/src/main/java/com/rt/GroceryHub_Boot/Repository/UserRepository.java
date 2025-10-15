package com.rt.GroceryHub_Boot.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rt.GroceryHub_Boot.Entity.UserTable;

@Repository
public interface UserRepository extends JpaRepository<UserTable, Integer> {

	UserTable findByUserNameAndEmailAndPasswordAndRole(String userName, String email, String password, String role);

}
