package com.rt.GroceryHub_Boot.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.rt.GroceryHub_Boot.Entity.OrderTable;
import com.rt.GroceryHub_Boot.Service.OrderService;

@RestController
public class OrderController {

    @Autowired
    OrderService os;

    @PostMapping("/confirmOrder")
    public OrderTable confirmOrder(@RequestBody OrderTable o) {

        int total = o.getProductPrice() * o.getUnit();
        o.setTotalPrice(total);

        return os.saveOrder(o);
    }

    @GetMapping("/allOrders")
    public List<OrderTable> getAllOrders() {
        return os.getAllOrders();
    }
}
