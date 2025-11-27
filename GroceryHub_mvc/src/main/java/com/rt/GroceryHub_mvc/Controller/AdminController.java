package com.rt.GroceryHub_mvc.Controller;

import com.rt.GroceryHub_mvc.Entity.GroceryProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    RestTemplate rt;

    String baseurl = "http://localhost:9091/"; // Boot base

    // Dashboard
    @GetMapping("/dashboard")
    public String dashboard() {
        return "adminDashboard";
    }

    // View all products (Admin)
    @GetMapping("/products")
    public String products(Model model) {
        GroceryProduct[] arr = rt.getForObject(baseurl + "viewAllData", GroceryProduct[].class);
        List<GroceryProduct> list = arr == null ? List.of() : Arrays.asList(arr);
        model.addAttribute("plist", list);
        return "adminProductList";
    }

    // Add product page
    @GetMapping("/add")
    public String addPage(Model model) {
        model.addAttribute("product", new GroceryProduct());
        return "addProduct";
    }

    // Save new product -> call Boot API (POST /addProduct)
    @PostMapping("/save")
    public String saveProduct(GroceryProduct product) {
        rt.postForObject(baseurl + "addProduct", product, GroceryProduct.class);
        return "redirect:/admin/products";
    }

    // Edit page (load product by id)
    @GetMapping("/edit/{id}")
    public String editPage(@PathVariable int id, Model model) {
        GroceryProduct[] arr = rt.getForObject(baseurl + "viewAllData", GroceryProduct[].class);
        GroceryProduct prod = null;
        if (arr != null) {
            Optional<GroceryProduct> o = Arrays.stream(arr).filter(p -> p.getId() == id).findFirst();
            if (o.isPresent()) prod = o.get();
        }
        model.addAttribute("product", prod == null ? new GroceryProduct() : prod);
        return "editProduct";
    }

    // Update product -> call Boot API (PUT /updateProduct/{id})
    @PostMapping("/update")
    public String updateProduct(GroceryProduct product) {
        // Boot expects PUT at /updateProduct/{id}
        rt.put(baseurl + "updateProduct/" + product.getId(), product);
        return "redirect:/admin/products";
    }

    // Delete product -> call Boot API (DELETE /deleteProduct/{id})
    @GetMapping("/delete/{id}")
    public String deleteProduct(@PathVariable int id) {
        rt.delete(baseurl + "deleteProduct/" + id);
        return "redirect:/admin/products";
    }
}
