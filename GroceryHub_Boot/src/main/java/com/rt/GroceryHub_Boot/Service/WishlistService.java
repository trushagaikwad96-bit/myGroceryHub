package com.rt.GroceryHub_Boot.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.GroceryHub_Boot.Entity.Wishlist;
import com.rt.GroceryHub_Boot.Repository.WishlistRepository;

@Service
public class WishlistService {

    @Autowired
    WishlistRepository wr;

    public List<Wishlist> saveAll(List<Wishlist> wishlist) {
        return wr.saveAll(wishlist);
    }

    public List<Wishlist> viewAll() {
        return wr.findAll();
    }
}
