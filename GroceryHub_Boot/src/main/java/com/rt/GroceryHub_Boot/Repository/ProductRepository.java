package com.rt.GroceryHub_Boot.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rt.GroceryHub_Boot.Entity.GroceryProduct;

@Repository
public interface  ProductRepository extends JpaRepository<GroceryProduct, Integer>{

}
