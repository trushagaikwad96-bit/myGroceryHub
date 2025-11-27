package com.rt.GroceryHub_Boot.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.rt.GroceryHub_Boot.Entity.Wishlist;
import com.rt.GroceryHub_Boot.Service.WishlistService;

@RestController
public class WishlistController {

    @Autowired
    WishlistService ws;

    @PostMapping("/addWishlistMultiple")
    public List<Wishlist> addWishlistMultiple(@RequestBody List<Wishlist> list) {
        return ws.saveAll(list);
    }

    @GetMapping("/viewWishlist")
    public List<Wishlist> viewWishlist() {
        return ws.viewAll();
    }
}
