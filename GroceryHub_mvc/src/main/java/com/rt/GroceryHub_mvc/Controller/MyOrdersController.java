package com.rt.GroceryHub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestTemplate;

// ⭐ Correct import
import com.rt.GroceryHub_mvc.Entity.OrderTable;

@Controller
public class MyOrdersController {

    @Autowired
    RestTemplate rt;

    String baseurl = "http://localhost:9091/";

    @GetMapping("/myOrders")
    public String myOrders(Model model) {

        OrderTable[] orders = rt.getForObject(baseurl + "allOrders", OrderTable[].class);

        model.addAttribute("orders", orders);

        return "MyOrders";
    }
}
