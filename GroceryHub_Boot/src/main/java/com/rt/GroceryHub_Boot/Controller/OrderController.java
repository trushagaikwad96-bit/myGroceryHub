package com.rt.GroceryHub_Boot.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.rt.GroceryHub_Boot.Entity.OrderTable;
import com.rt.GroceryHub_Boot.Service.OrderService;

@RestController
public class OrderController {

    @Autowired
    OrderService os;

    @PostMapping("/confirmOrder")
    public OrderTable confirmOrder(@RequestBody OrderTable o) {

        // Calculate total price
        int total = o.getProductPrice() * o.getUnit();
        o.setTotalPrice(total);

        return os.saveOrder(o);
    }
    // 👉 All Orders API
    @GetMapping("/allOrders")
    public List<OrderTable> getAllOrders() {
        return os.getAllOrders();
    }
}
