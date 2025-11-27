package com.rt.GroceryHub_Boot.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.rt.GroceryHub_Boot.Entity.OrderTable;

@Repository
public interface OrderRepository extends JpaRepository<OrderTable, Integer> {

}
