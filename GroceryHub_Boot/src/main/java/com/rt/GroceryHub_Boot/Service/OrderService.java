package com.rt.GroceryHub_Boot.Service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.GroceryHub_Boot.Entity.OrderTable;
import com.rt.GroceryHub_Boot.Repository.OrderRepository;

@Service
public class OrderService {

    @Autowired
    OrderRepository or;

    public OrderTable saveOrder(OrderTable o) {

        // FIX: Date set if null
        if (o.getOrderDate() == null) {
            o.setOrderDate(LocalDateTime.now());
        }

        int total = o.getProductPrice() * o.getUnit();
        o.setTotalPrice(total);

        return or.save(o);
    }

    public List<OrderTable> getAllOrders() {
        return or.findAll();
    }
}
