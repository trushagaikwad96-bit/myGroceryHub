package com.rt.GroceryHub_mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.rt.GroceryHub_mvc.Entity.OrderTable;   // ✔ correct import

@Controller
public class ConfirmOrderController {

    @Autowired
    RestTemplate rt;

    String baseurl = "http://localhost:9091/";

    @PostMapping("/confirmOrder")
    public String confirmOrder(
            @RequestParam String productName,
            @RequestParam int productPrice,
            @RequestParam int unit,
            @RequestParam String customerName,
            @RequestParam String mobile,
            @RequestParam String address,
            Model model) {

        OrderTable o = new OrderTable();  // ✔ using MVC DTO
        o.setProductName(productName);
        o.setProductPrice(productPrice);
        o.setUnit(unit);
        o.setCustomerName(customerName);
        o.setMobile(mobile);
        o.setAddress(address);

        // POST to Boot API
        OrderTable saved = rt.postForObject(baseurl + "confirmOrder", o, OrderTable.class);

        model.addAttribute("order", saved);

        return "OrderSuccess";
    }
    
}
