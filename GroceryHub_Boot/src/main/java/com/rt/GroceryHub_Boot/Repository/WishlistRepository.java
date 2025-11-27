package com.rt.GroceryHub_Boot.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.rt.GroceryHub_Boot.Entity.Wishlist;

public interface WishlistRepository extends JpaRepository<Wishlist, Integer> {

}
