package com.rt.GroceryHub_mvc.Controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import org.springframework.web.client.RestTemplate;

import com.rt.GroceryHub_mvc.Entity.Wishlist;
import com.rt.GroceryHub_mvc.Entity.WishlistListWrapper.WishlistListWrapper;

@Controller
public class WishlistControllerMVC {

    @Autowired
    RestTemplate rt;

    String baseurl = "http://localhost:9091/";

    @GetMapping("/addWishlist")
    public String addWishlist(Model m) {

        WishlistListWrapper wrapper = new WishlistListWrapper();
        wrapper.setWishlist(new ArrayList<>());

        wrapper.getWishlist().add(new Wishlist()); // first row

        m.addAttribute("wrapper", wrapper);
        return "addWishlist"; // JSP page
    }

    @PostMapping("/addWishlist")
    public String saveWishlist(WishlistListWrapper wrapper) {

        rt.postForObject(baseurl + "addWishlistMultiple",
                wrapper.getWishlist(),
                Wishlist[].class);

        return "redirect:/viewWishlist";
    }

    @GetMapping("/viewWishlist")
    public String viewWishlist(Model m) {
        Wishlist[] list = rt.getForObject(baseurl + "viewWishlist", Wishlist[].class);
        m.addAttribute("wishlist", list);
        return "wishlistView";
    }
    @PostMapping("/addToWishlistSingle")
    public String addToWishlistSingle(
            @RequestParam String productName,
            @RequestParam String productPrice,
            @RequestParam String productCategory,
            @RequestParam String unit
    ) {
        Wishlist w = new Wishlist();
        w.setProductName(productName);
        w.setProductPrice(productPrice);
        w.setProductCategory(productCategory);
        w.setUnit(unit);

        // Only one item → create list of one item
        Wishlist[] response = rt.postForObject(
                baseurl + "addWishlistMultiple",
                java.util.List.of(w),
                Wishlist[].class
        );

        return "redirect:/viewWishlist";
    }

}
