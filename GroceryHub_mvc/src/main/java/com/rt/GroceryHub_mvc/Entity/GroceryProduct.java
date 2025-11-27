package com.rt.GroceryHub_mvc.Entity;


public class GroceryProduct {
		
	    
		private int Id;
		private String productName;
		private String productPrice;
		private String productCategory;
		private String unit;
		private String description;
		
		public GroceryProduct() {	
		}

		public GroceryProduct(int id, String productName, String productPrice, String productCategory, String unit,
				String description) {
			super();
			Id = id;
			this.productName = productName;
			this.productPrice = productPrice;
			this.productCategory = productCategory;
			this.unit = unit;
			this.description = description;
		}

		public int getId() {
			return Id;
		}

		public void setId(int id) {
			Id = id;
		}

		public String getProductName() {
			return productName;
		}

		public void setProductName(String productName) {
			this.productName = productName;
		}

		public String getProductPrice() {
			return productPrice;
		}

		public void setProductPrice(String productPrice) {
			this.productPrice = productPrice;
		}

		public String getProductCategory() {
			return productCategory;
		}

		public void setProductCategory(String productCategory) {
			this.productCategory = productCategory;
		}

		public String getUnit() {
			return unit;
		}

		public void setUnit(String unit) {
			this.unit = unit;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}
		
		
		
		
		
		
		
		   
	}
	


