package com.rt.GroceryHub_mvc.Entity;


public class UserTable {
	
	
	 private int Id;
	
	 private String userName;
	 private String password;
	 private String email;
	 
	 
	 private String PhoneNo;
	 private String address;
	 private String role;
	 
	 public UserTable() {}
	 public UserTable(int id, String userName, String password, String email, String phoneNo, String address,
			String role) {
		super();
		Id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		PhoneNo = phoneNo;
		this.address = address;
		this.role = role;
	 }
	 public int getId() {
		 return Id;
	 }
	 public void setId(int id) {
		 Id = id;
	 }
	 public String getUserName() {
		 return userName;
	 }
	 public void setUserName(String userName) {
		 this.userName = userName;
	 }
	 public String getPassword() {
		 return password;
	 }
	 public void setPassword(String password) {
		 this.password = password;
	 }
	 public String getEmail() {
		 return email;
	 }
	 public void setEmail(String email) {
		 this.email = email;
	 }
	 public String getPhoneNo() {
		 return PhoneNo;
	 }
	 public void setPhoneNo(String phoneNo) {
		 PhoneNo = phoneNo;
	 }
	 public String getAddress() {
		 return address;
	 }
	 public void setAddress(String address) {
		 this.address = address;
	 }
	 public String getRole() {
		 return role;
	 }
	 public void setRole(String role) {
		 this.role = role;
	 }
	 
	 

 
}
